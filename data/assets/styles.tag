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
  type: anchor
  param: http://dictionary.tinellb.com/lex/$text$.html#$url(lookup:lang)$|$upper(text)$
  language: true
  key: Alt-d
interlinear:
  type: div
paragraph:
  type: div
example:
  type: block
  open: <details class="example">
  close: </details>
  key: Alt-E
  props:
    background: '#66ff66'
folded:
  type: line
  open: <summary class="folding">
  close: </summary>
  key: f
  props:
    left: 30
folding:
  type: block
  open: <details class="folding">
  close: </details>
  key: Alt-F
  props:
    background: '#ff66ff'
external:
  props:
    colour: blue
    underline: true
  type: anchor
grammar-link:
  props:
    colour: '#000099'
    underline: true
  type: anchor
  param: $link:lookup:grammar$|$text$
  language: true
gloss:
  type: span
  props:
    italics: true
heading-link:
  props:
    bold: true
    underline: true
    colour: '#3366cc'
  type: heading
  open: <h2><a 
  pipe: '>'
  close: </a></h2>
  param: href="$link:lookup:grammar$"|$text$
  language: true
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
  key: Alt-i
image:
  open: <img src="
  close: '">'
internal:
  type: anchor
  props:
    colour: blue
    underline: true
left-columns:
  end: </div>
  start: <div class="left-columns">
message:
  type: div
  props:
    colour: red
mobile:
  type: div
  rank: 150
  props:
    background: '#ffff33'
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
overline:
  type: span
  props:
    underline: true
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
table:
  type: table
thead:
  type: block
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
