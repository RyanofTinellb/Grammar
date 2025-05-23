let chanceBox;
let chain;
let multigraphs;
let debug;
const firstNullChar = 200;
let nullChar;

const textToInclude = '';

const geminate = str => str.replace(/(.)\1/g, '$1ː');
const degeminate = str => str.replace(/(.)ː/g, '$1$1');

const choose = arr => arr[Math.floor(Math.random() * arr.length)];
const bracket = name => name.match(/[^a-z+-]/) ? name : `[${name}]`;

const identityFunction = x => x

const sorted = obj =>
  Object.entries(obj).sort((a, b) => b[0].length - a[0].length);


getElt = str => document.getElementById(str);
check = str => getElt(str).checked;
getValue = (str, sep) => getElt(str).value.split(sep || '\n');


async function fillWords(language) {
  let data = await fetch('wordlist.json');
  data = await data.json();
  data = data.filter(a => a.l == language)
    .map(a => a.t.toLowerCase())
    .filter(a => a.includes(textToInclude))
    .filter(unique);
  console.log(data);
  getElt('words').innerHTML = data.join('\n');
}

function intermediate() {
  console.clear();
  let outputArea = document.getElementById('output');
  chain = check('chain');
  nullChar = 61952;
  // numcols = window.innerWidth < 800 ? 2 : 3;
  // outputArea.style.columns = chain ? 'initial' : numcols;
  outputArea.innerHTML = `<p>${change()}</p>`;
}

function change() {
  chanceBox = check('chance') ? 1 : 0;
  multigraphs = check('multi');
  debug = check('debug');
  let rules = new Rules('rulesbox', 'features', 'rewrite');
  let words = getValue('wordsbox', / |\n/g);
  words = words.map(word => new Word(word, rules));
  if (chain) {
    return words.map(word => word.etymology).join('</p><p>');
  } else {
    return words.map(word => `<span class="lemma">${word.word}<span class="hidden-info">
      ${word.natural}</span></span>`).join(' ');
  }
}

function expandFeatures(match, category, regexp, elements, firstLayer = true) {
  let rules = [];
  let subregexp = RegExp(`∓${category}`, 'g')
  let [_, start, rule, end] = match.match(/({*)([^{}]*)(}*)/);
  for (const element of elements) {
    newRule = rule.replace(regexp, element);
    if (firstLayer) {
      if (match.match(subregexp)) {
        newRule = expandFeatures(newRule, category, subregexp, elements, false)
      }
    }
    rules.push(newRule);
  }
  return `${start}${rules.join('\n')}${end}`;
}

function prepareRulesBox(textarea, definitionList) {
  let rules = getElt(textarea).value.replaceAll('&gt;', '>');
  double_spaces = rules.match(/.*  .*/);
  if (double_spaces) { console.log(double_spaces[0]) };
  rules = replaceFeatures(definitionList, rules);
  let line = RegExp(`([{↻ ]*)(.* [|] [^{}\n\r]*)(}*.*)`, 'g');
  rules = rules.replace(line, (_m, ...p) => `${p[0]}${duplicateLines(p[1])}${p[2]}`)
  return rules.split('\n');
}

function replaceFeatures(definitionList, rules) {
  definitionList = getElt(definitionList)
  if (!definitionList) return rules;
  for (const feature of definitionList.children) {
    let [category, ...elements] = feature.innerHTML.split(/\W+/);
    let line = RegExp(`([{↻ ]*)(.*[#±]${category}[^{}\n\r]*)(}*.*)`, 'g');
    let regexp = RegExp(`[#±]${category}`, 'g');
    rules = rules.replace(line, (_m, ...p) => `${p[0]}${expandFeatures(p[1], category, regexp, elements)}${p[2]}`);
  }
  return rules
}

function duplicateLines(line) {
  const output = [];
  const [sources, target, environments] = line.split(/ [/→>] /);
  for (const source of sources.split(' | ')) {
    for (const environment of environments.split(' | ')) {
      output.push(`${source} → ${target} / ${environment}`);
    }
  }
  return output.join('\n');
}

function parseRewrite(name, sep) {
  rewriteRules = getElt(name);
  if (!rewriteRules) return identityFunction;
  const hash = Object.fromEntries(Array.from(rewriteRules.children).map(line => line.innerHTML.split(sep)));
  const regex = RegExp(`[${Object.keys(hash).join('')}]`, 'g');
  return str => str.replace(regex, match => hash[match]);
}

class Rules {
  constructor(textarea, definitionList, rewriteList) {
    this.rules = prepareRulesBox(textarea, definitionList);
    this.new = (name, parent) => ({
      name,
      parent,
      rule: [],
      chance: 0,
      repeat: false,
    });
    let ruleset = this.soundChanges = this.new();
    let name = '';
    let rule;
    this.categories = parseTables();
    let rewrite = parseRewrite(rewriteList, ' → ');
    this.clean = str => str.replace(/[∅]/g, '');
    this.tidy = str => str ? str.replace(/[?@*ː\uf200-\uf300]/g, '') : '';
    this.pipeOr = (match, p1) => multigraphs ? `(${p1})` : match;
    for (let line of this.rules) {
      if (!line) continue;
      [rule, name] = line.split(' // ');
      if (rule.includes('=')) {
        let [category, sounds] = rule.split(' = ');
        this.categories[category] = this.replaceSounds(sounds);
        continue;
      }
      if (rule.includes('{')) {
        rule = rule.slice(1);
        if (!debug) {
          let newruleset = this.new(name, ruleset);
          ruleset.rule.push(newruleset);
          ruleset = newruleset;
        }
      } else if (rule.includes('}')) {
        rule = rule.slice(0, -1);
        if (!debug) {
          ruleset.rule.push(this.makeRule(rule, rewrite));
          ruleset = ruleset.parent;
          continue;
        }
      }
      ruleset.rule.push(this.makeRule(rule, rewrite));
    }
    const summary = {
      sounds: this.fix(this.categories, debug),
      rules: this.soundChanges,
    };
    console.log(summary);
  }

  fix(cats, debug) {
    output = {}
    for (const cat in cats) {
      output[cat] = cats[cat].replace(/[?\uf200-\uf300]/g, debug ? '.' : '');
    }
    return output;
  }

  replaceCategories(str) {
    let savedCategory = null;
    let sides = null;
    let before;
    let after;
    if (str.includes('_')) {
      [before, after] = str.split('_').map(this.replaceCategories, this);
      savedCategory = before.category || after.category || '';
      before.regex = before.regex.replace('#', '^');
      after.regex = after.regex.replace('#', '$');
      return {
        str: before.str + after.str || '',
        regex: `${before.regex}${after.regex}` || '',
        before,
        after,
        category: savedCategory
      };
    }
    let total = 0;
    let regex = str.replace(/\?/g, '.').replace(/~/, '.*?')
      .replace(/\(/g, '(?:(?:').replace(/\)/g, '))?')
      .replace(/\[(.*?)[ ,]+(.*?)\]/g,
        (match, p1, p2) => this.addToCats(match, p1, p2, this.categories));
    for (let [category, sounds] of sorted(this.categories)) {
      for (const star of ['*', '']) {
        regex = regex.split(category + star);
        if (regex.length > 1 && sounds.length != 1) {
          savedCategory = savedCategory || sounds;
          sides = sides || regex;
          total += regex.length - 1;
        }
        let soundList = multigraphs ? `(?:${sounds})` : (sounds.length == 1 ? sounds : `[${this.tidy(sounds)}]`);
        if (star) soundList += '+';
        regex = sounds.length == 1 ? regex.join(soundList) : regex.join(`)(${soundList})(`);
      }
    }
    [before, after] = sides || [null, null];
    return {
      str: regex.replace(/[()∅]/g, ''),
      regex: `(${this.clean(regex)})`,
      i: 2 * total + 1,
      before,
      after,
      category: savedCategory
    };
  }

  addToCats(match, p1, p2, categories) {
    // add this to the category unless already exists
    if (!categories[match]) {
      let sounds = categories[bracket(p1)];
      const selection = p2.split(/[, ]+/).map(a => categories[bracket(a)]);
      for (const category of selection) {
        sounds = sounds.replace(/./g, a => category.includes(a) ? a : '');
      }
      categories[match] = sounds;
    }
    return match;
  }

  replaceSounds(str) {
    console.log('replaceSounds', str)
    str = str.replace(/\[(.*?)[, ]+(.*?)\]/g,
      (match, p1, p2) => this.addToCats(match, p1, p2, this.categories));
    for (let [category, sounds] of sorted(this.categories)) {
      str = str.split(category).join(sounds);
    }
    return str;
  }

  makeRule(rule, rewrite) {
    let chance;
    let repeat = rule.includes('↻');
    if (rule.includes('% ')) {
      [chance, rule] = rule.split('% ');
    } else {
      chance = 100;
    }
    chance = Math.sqrt(1 - chance / 100);
    let [source, target, environment] = rule.replace('↻ ', '')
      .split(/ [/→>] /)
      .map(this.replaceCategories, this);
    let alter = this.factory(source, target, environment);
    environment = this.createEnvironment(environment, source);
    let regex = new RegExp(environment, 'g');
    let str = rule;
    rule = word => rewrite(word.replace(regex, alter.eqn).replace(/∅/g, ''));
    return {
      before: environment,
      after: alter.after,
      rule,
      chance,
      repeat,
      str
    };
  }

  createEnvironment(environment, before) {
    return environment ?
      `(${environment.before.regex})${before.regex}(${environment.after.regex})` :
      `()${before.regex}()`;
  }

  categoryArray(category) {
    let split = multigraphs ? '|' : '';
    return category.category.split(split);
  }

  categoryMatch() {
    let matchHash = {};
    let [before, after] = [...arguments].map(this.categoryArray, this);
    for (let i = 0; i < before.length; i++) {
      let [b, a] = [before, after].map(x => this.tidy(x[i]));
      if (a && b) matchHash[b] = a;
    }
    return matchHash;
  }

  factory(earlier, later, during) {
    let eqn, after, arr;
    if (later.category) {
      let matchHash;
      if (earlier.category) {
        matchHash = this.categoryMatch(earlier, later);
        let i = during ? during.before.i + 3 : 3;
        let j = i + 2;
        eqn = (...p) => {
          arr = [p[1], later.before, matchHash[p[i]], later.after, p[j]];
          return arr.join('');
        }
      } else if (during.before.category) {
        matchHash = this.categoryMatch(during.before, later);
        eqn = (...p) => {
          arr = [p[1], later.before, matchHash[p[3]], later.after, p[6]];
          return arr.join('');
        }
      } else {
        matchHash = this.categoryMatch(during.after, later);
        eqn = (...p) => {
          arr = [p[1], later.before, matchHash[p[6]], later.after, p[4]];
          return arr.join('');
        }
      }
      after = {
        matchHash,
        str: later.str
      }
    } else {
      after = later.str;
      let i = during ? during.before.i + earlier.i + 2 : earlier.i + 2;
      eqn = (...p) => {
        arr = [p[1], after, p[i]];
        return arr.join('');
      }
    }
    return {
      eqn,
      after
    };
  }
}

class Word {
  constructor(word, rules) {
    this.rules = rules.soundChanges.rule;
    this.lemma = () => this.word[0];
    this.hasChanged = () => this.lemma() != this.old[0];
    this.equals = str => this.lemma() == str;
    this.isNew = () => this.lemma() != this.original;
    this.skip = a => Math.random() < this.chance * chanceBox * a;
    if (word.includes('%')) {
      [this.chance, word] = word.split(/% */);
      this.chance = Math.sqrt(1 - parseInt(this.chance) / 100);
    } else {
      this.chance = Math.sqrt(0.2);
    }
    this.natural = word;
    this.etymology = [word];
    this.word = [word];
    this.reset();
    this.evolve();
  }

  update() {
    this.word[0] = degeminate(this.word[1]);
  }

  apply(rule) {
    if (rule instanceof Function) {
      this.word = this.word.map(rule);
    } else if (rule instanceof Array) {
      for (rule of rule) {
        this.apply(rule);
      }
    } else {
      if (this.skip(rule.chance)) return;
      do {
        this.reset();
        this.apply(rule.rule);
        this.update();
      } while (rule.repeat && this.hasChanged());
    }
  }

  reset() {
    this.word[1] = geminate(this.word[0]);
    this.old = this.word.slice();
  }

  evolve() {
    for (let rule of this.rules) {
      this.original = this.lemma();
      this.apply(rule);
      if (!this.isNew()) continue;
      this.etymology.push(
        !debug ? this.lemma() :
          `<span class="lemma"><span class="hidden-info">
          ${rule.str}</span>${this.lemma()}</span>`
      );
    }
    this.etymology = this.etymology.join(' > ');
    this.word = this.lemma();
  }
}

function parseTables() {
  let sounds = {};
  const tables = document.getElementsByClassName('alphabet');
  for (const table of tables) {
    parseTable(table, sounds);
  }
  return sounds;
}

function findColIndex(rowIndex, table, text) {
  let colIndex = 0;
  while (table?.[colIndex]?.[rowIndex]) {
    colIndex++;
  }
  return colIndex;
}

function parseTable(table, sounds) {
  let colnames = [];
  let rownames = [];
  let fulls = [];
  let tablename;

  // Parse THead
  for (const row of table.tHead.rows) {
    for (const cell of row.cells) {
      const text = cell.textContent;
      if (!cell.cellIndex && !row.rowIndex) {
        tablename = text;
        continue;
      }
      const rowIndex = row.rowIndex;
      const colIndex = findColIndex(rowIndex, fulls, text);
      for (let i = colIndex; i < cell.colSpan + colIndex; i++) {
        for (let j = rowIndex; j < cell.rowSpan + rowIndex; j++) {
          if (!fulls[i]) fulls[i] = [];
          fulls[i][j] = true;
        }
        if (!colnames[i]) colnames[i] = [];
        colnames[i].push(text);
      }
    }
  }

  // Parse TBody
  rownum = 0;
  for (const row of table.tBodies[0].rows) {
    colnum = 0;
    for (const cell of row.cells) {
      if (cell.tagName == 'TH') {
        const text = cell.textContent;
        for (let i = 0; i < cell.rowSpan; i++) {
          const index = rownum + i;
          if (!rownames[index]) rownames[index] = [];
          if (text) rownames[index].push(text);
        }
      } else {
        const text = cell.textContent || String.fromCharCode(nullChar++);
        for (let rowname of rownames[rownum]) {
          push(sounds, rowname, text);
        }
        for (let colname of colnames[colnum]) {
          push(sounds, colname, text);
        }
        if (tablename.length > 1) push(sounds, tablename.charAt(0).toUpperCase(), text);
        push(sounds, tablename, text);
        colnum++;
      }
    }
    rownum++;
  }
}

function push(sounds, name, text) {
  name = bracket(name);
  if (!multigraphs) {
    if (!sounds[name]) sounds[name] = '';
    sounds[name] += text;
  } else {
    if (sounds[name]) {
      sounds[name] += `|${text}`;
    } else {
      sounds[name] = text;
    }
  }
}
