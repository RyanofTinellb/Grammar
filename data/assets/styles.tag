default:
  props:
    size: 18
columns:
  type: div
mobile-table:
  type: div
left-columns:
  end: </div>
  start: <div class="left-columns">
table:
  type: table
ol:
  start: <li>
  end: </li>
ul:
  start: <li>
  end: </li>
sentence-list:
  props:
    left: 5
  type: div
wordlist:
  type: div
  props:
    background: '#cccc99'
    left: 5
interlinear:
  type: div
paragraph:
  type: div
folded:
  type: line
  open: <summary class="folding">
  close: </summary>
folding:
  type: block
  open: <details class="folding">
  close: </details>
stars:
  props:
    justify: right
  type: div
h2:
  type: heading
  props:
    bold: true
    size: 150
h3:
  type: heading
  props:
    bold: true
    size: 140
h4:
  type: heading
  props:
    bold: true
    size: 130
h5:
  type: heading
  props:
    bold: true
    size: 120
message:
  type: div
  props:
    colour: red
gloss:
  type: span
  props:
    italics: true
multiline:
  open: ' '
  pipe: <br>
  close: ' '
  rank: -100
external:
  props:
    colour: blue
    underline: true
  open: <a href="
  close: </a>
  hyperlink: true
  pipe: '">'
internal:
  type: link
  props:
    colour: blue
    underline: true
  close: </a>
  hyperlink: true
  pipe: '">'
  open: <a href="
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
  type: span
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
