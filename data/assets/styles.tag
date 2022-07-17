- props:
    size: 18
  tags:
    name: default
- tags:
    block: true
    end: </div>
    name: columns
    start: <div class="columns">
- tags:
    block: true
    end: </div>
    name: mobiletable
    start: <div class="mobile-table">
- tags:
    block: true
    end: </div>
    name: leftcolumns
    start: <div class="left-columns">
- tags:
    block: true
    name: table
    separator: tr
- tags:
    block: true
    name: ol
    separator: li
- tags:
    block: true
    name: ul
    separator: li
- props:
    border: true
    left: 5
  tags:
    block: true
    end: </div>
    name: sentencelist
    separator: p
    start: <div class="sentence-list">
- props:
    border: true
    left: 5
  tags:
    block: true
    end: </div>
    name: wordlist
    separator: p
    start: <div class="wordlist">
- tags:
    block: true
    end: </div>
    name: interlinear
    start: <div class="interlinear">
- tags:
    block: true
    end: </div>
    name: paragraph
    start: <div class="paragraph">
- tags:
    block: true
    end: </div></div>
    name: folding
    pipe: </div><div class="block">
    start: <div class="folding"><div class="block">
- props:
    justify: right
  tags:
    block: true
    end: </div>
    name: stars
    start: <div class="stars">
- props:
    bold: true
    size: '+5'
  tags:
    block: true
    name: h1
- props:
    bold: true
    size: '+4'
  tags:
    block: true
    name: h2
- props:
    bold: true
    size: '+3'
  tags:
    block: true
    name: h3
- props:
    bold: true
    size: '+2'
  tags:
    block: true
    name: h4
- props:
    colour: red
  tags:
    block: true
    end: </div>
    name: message
    start: <div class="message">
- props:
    italics: true
  tags:
    end: </span>
    name: gloss
    start: <span class="gloss">
- tags:
    end: ' '
    name: multiline
    pipe: <br>
    start: ' '
- props:
    colour: blue
    underline: true
  tags:
    end: </a>
    hyperlink: true
    name: external
    pipe: '">'
    start: <a href="
- props:
    colour: blue
    underline: true
  tags:
    end: </a>
    hyperlink: true
    name: internal
    pipe: '">'
    start: <a href="
- tags:
    end: '">'
    name: dictionary
    start: <a href="dictionary.tinellb.com/lex/
- tags:
    end: '">'
    name: image
    start: <img src="
- props:
    font: tinellbian
  tags:
    end: </span>
    language: x-tlb-%l
    name: tinellbian
    start: <span class="tinellbian">
- props:
    bold: true
  tags:
    end: </span>
    language: x-tlb-%l
    name: transliteration
    start: <span class="transliteration">
- tags:
    name: abbr
- props:
    background: yellow
  tags:
    end: <span>
    name: highlight
    start: <span class="highlight">
- props:
    italics: true
  tags:
    end: </span>
    name: meaning
    start: <span class="meaning">
- props:
    font: lucida sans unicode
  tags:
    end: </span>
    name: ipa
    start: <span class="ipa">
- props:
    italics: true
  tags:
    end: </span>
    name: symbol
    start: <span class="symbol">
- props:
    underline: true
  tags:
    end: </span>
    name: overline
    start: <span class="overline">
- props:
    font: Alegreya SC
  tags:
    end: </span>
    name: smallcaps
    start: <span class="small-caps">
- props:
    bold: true
  tags:
    name: strong
- props:
    offset: superscript
  tags:
    name: sup
- props:
    size: '+2'
  tags:
    end: </span>
    name: season
    pipe: '">'
    start: <span class="season" title=">
