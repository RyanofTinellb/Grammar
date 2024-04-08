- props:
    size: 18
  tags:
    name: default
- tags:
    end: </div>
    name: columns
    start: <div class="columns">
- tags:
    end: </div>
    name: mobiletable
    start: <div class="mobile-table">
- tags:
    end: </div>
    name: leftcolumns
    start: <div class="left-columns">
- tags:
    name: table
    separator: tr
- tags:
    name: ol
    separator: li
- tags:
    name: ul
    separator: li
- props:
    left: 5
  tags:
    end: </div>
    name: sentencelist
    separator: p
    start: <div class="sentence-list">
- props:
    background: '#ffffcc'
    left: 5
  tags:
    end: </div>
    name: wordlist
    separator: p
    start: <div class="wordlist">
- tags:
    end: </div>
    name: interlinear
    start: <div class="interlinear">
- tags:
    end: </div>
    name: paragraph
    start: <div class="paragraph">
- tags:
    end: </div></div>
    name: folding
    pipe: </div><div class="block">
    start: <div class="folding"><div class="block">
- props:
    justify: right
  tags:
    end: </div>
    name: stars
    start: <div class="stars">
- props:
    bold: true
    size: 150
  tags:
    name: h1
- props:
    bold: true
    size: 140
  tags:
    name: h2
- props:
    bold: true
    size: 130
  tags:
    name: h3
- props:
    bold: true
    size: 120
  tags:
    name: h4
- props:
    colour: red
  tags:
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
  props:
    font: Felix Titling
    size: 70
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
    bold: true
  tags:
    name: strong
- props:
    offset: superscript
  tags:
    name: sup
- props:
    size: 2
  tags:
    end: </span>
    name: season
    pipe: '">'
    start: <span class="season" title=">
