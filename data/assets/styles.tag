default:
  props:
    size: 18
  tags: {}
columns:
  tags:
    end: </div>
    start: <div class="columns">
mobiletable:
  tags:
    end: </div>
    start: <div class="mobile-table">
leftcolumns:
  tags:
    end: </div>
    start: <div class="left-columns">
table:
  tags:
    separator: tr
ol:
  tags:
    separator: li
ul:
  tags:
    separator: li
sentencelist:
  props:
    left: 5
  tags:
    end: </div>
    separator: p
    start: <div class="sentence-list">
wordlist:
  props:
    background: '#ffffcc'
    left: 5
  tags:
    end: </div>
    separator: p
    start: <div class="wordlist">
interlinear:
  tags:
    end: </div>
    start: <div class="interlinear">
paragraph:
  tags:
    end: </div>
    start: <div class="paragraph">
folding:
  tags:
    end: </div></div>
    pipe: </div><div class="block">
    start: <div class="folding"><div class="block">
stars:
  props:
    justify: right
  tags:
    end: </div>
    start: <div class="stars">
h1:
  props:
    bold: true
    size: 150
  tags: {}
h2:
  props:
    bold: true
    size: 140
  tags: {}
h3:
  props:
    bold: true
    size: 130
  tags: {}
h4:
  props:
    bold: true
    size: 120
  tags: {}
message:
  props:
    colour: red
  tags:
    end: </div>
    start: <div class="message">
gloss:
  props:
    italics: true
  tags:
    end: </span>
    start: <span class="gloss">
multiline:
  tags:
    end: ' '
    pipe: <br>
    start: ' '
external:
  props:
    colour: blue
    underline: true
  tags:
    end: </a>
    hyperlink: true
    pipe: '">'
    start: <a href="
internal:
  props:
    colour: blue
    underline: true
  tags:
    end: </a>
    hyperlink: true
    pipe: '">'
    start: <a href="
dictionary:
  tags:
    end: '">'
    start: <a href="dictionary.tinellb.com/lex/
image:
  tags:
    end: '">'
    start: <img src="
tinellbian:
  props:
    font: tinellbian
  tags:
    end: </span>
    language: x-tlb-%l
    start: <span class="tinellbian">
transliteration:
  props:
    bold: true
  tags:
    end: </span>
    language: x-tlb-%l
    start: <span class="transliteration">
abbr:
  tags: {}
  props:
    font: Felix Titling
    size: 70
highlight:
  props:
    background: yellow
  tags:
    end: <span>
    start: <span class="highlight">
meaning:
  props:
    italics: true
  tags:
    end: </span>
    start: <span class="meaning">
ipa:
  props:
    font: lucida sans unicode
  tags:
    end: </span>
    start: <span class="ipa">
symbol:
  props:
    italics: true
  tags:
    end: </span>
    start: <span class="symbol">
overline:
  props:
    underline: true
  tags:
    end: </span>
    start: <span class="overline">
strong:
  props:
    bold: true
  tags: {}
sup:
  props:
    offset: superscript
  tags: {}
season:
  props:
    size: 2
  tags:
    end: </span>
    pipe: '">'
    start: <span class="season" title=">
