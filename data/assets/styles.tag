default:
  props:
    size: 18
    ime: autocorrect
abbr:
  props:
    font: Felix Titling
    size: 70
columns:
  type: div
dictionary:
  props:
    colour: '#0000ff'
  open: <a href="
  pipe: '">'
  close: '</a>'
  param: http://dictionary.tinellb.com/lex/$text$.html#$url(lookup:lang)$|$upper(text)$
  language: true
  rank: -50
  key: Alt-d
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
external:
  props:
    colour: blue
    underline: true
  open: <a href="
  close: </a>
  hyperlink: true
  pipe: '">'
gloss:
  type: span
  props:
    italics: true
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
highlight:
  type: span
  props:
    background: yellow
ipa:
  props:
    font: lucida sans unicode
  type: span
image:
  open: <img src="
  close: '">'
internal:
  type: link
  props:
    colour: blue
    underline: true
  close: </a>
  hyperlink: true
  pipe: '">'
  open: <a href="
left-columns:
  end: </div>
  start: <div class="left-columns">
message:
  type: div
  props:
    colour: red
mobile-table:
  type: div
multiline:
  open: ' '
  pipe: <br>
  close: ' '
  rank: -100
ol:
  start: <li>
  end: </li>
season:
  props:
    size: 2
  start: <dfn class="season" title="
  pipe: '">'
  end: </dfn>
  param: $lookup:season$|$text$
sentence-list:
  props:
    left: 5
  type: div
stars:
  props:
    justify: right
  type: div
strong:
  props:
    bold: true
sup:
  props:
    offset: superscript
symbol:
  type: span
  props:
    italics: true
overline:
  type: span
  props:
    underline: true
table:
  type: table
tinellbian:
  props:
    font: tinellbian
  language: true
  type: span
transliteration:
  props:
    bold: true
  type: span
  language: true
ul:
  start: <li>
  end: </li>
wordlist:
  type: div
  props:
    background: '#cccc99'
    left: 5
