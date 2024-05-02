default:
  props:
    size: 18
columns:
  end: </div>
  start: <div class="columns">
mobiletable:
  end: </div>
  start: <div class="mobile-table">
leftcolumns:
  end: </div>
  start: <div class="left-columns">
table:
  separator: tr
ol:
  separator: li
ul:
  separator: li
sentencelist:
  props:
    left: 5
  end: </div>
  separator: p
  start: <div class="sentence-list">
wordlist:
  props:
    background: '#ffffcc'
    left: 5
  end: </div>
  separator: p
  start: <div class="wordlist">
interlinear:
  end: </div>
  start: <div class="interlinear">
paragraph:
  end: </div>
  start: <div class="paragraph">
folding:
  end: </div></div>
  pipe: </div><div class="block">
  start: <div class="folding"><div class="block">
stars:
  props:
    justify: right
  end: </div>
  start: <div class="stars">
h2:
  props:
    bold: true
    size: 150
h3:
  props:
    bold: true
    size: 140
h4:
  props:
    bold: true
    size: 130
h5:
  props:
    bold: true
    size: 120
message:
  props:
    colour: red
  end: </div>
  start: <div class="message">
gloss:
  props:
    italics: true
  end: </span>
  start: <span class="gloss">
multiline:
  end: ' '
  pipe: <br>
  start: ' '
external:
  props:
    colour: blue
    underline: true
  end: </a>
  hyperlink: true
  pipe: '">'
  start: <a href="
internal:
  props:
    colour: blue
    underline: true
  end: </a>
  hyperlink: true
  pipe: '">'
  start: <a href="
dictionary:
  end: '">'
  start: <a href="dictionary.tinellb.com/lex/
image:
  end: '">'
  start: <img src="
tinellbian:
  props:
    font: tinellbian
  end: </span>
  language: x-tlb-%l
  start: <span class="tinellbian">
transliteration:
  props:
    bold: true
  end: </span>
  language: x-tlb-%l
  start: <span class="transliteration">
abbr:
  props:
    font: Felix Titling
    size: 70
highlight:
  props:
    background: yellow
  end: <span>
  start: <span class="highlight">
meaning:
  props:
    italics: true
  end: </span>
  start: <span class="meaning">
ipa:
  props:
    font: lucida sans unicode
  end: </span>
  start: <span class="ipa">
symbol:
  props:
    italics: true
  end: </span>
  start: <span class="symbol">
overline:
  props:
    underline: true
  end: </span>
  start: <span class="overline">
strong:
  props:
    bold: true
sup:
  props:
    offset: superscript
season:
  props:
    size: 2
  end: </span>
  pipe: '">'
  start: <span class="season" title=">
