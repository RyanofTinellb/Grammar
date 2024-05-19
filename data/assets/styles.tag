default:
  props:
    size: 18
    ime: autocorrect
abbr:
  props:
    font: Felix Titling
    size: 80
  type: span
  open: <dfn><abbr class="glossary" title="
  pipe: '">'
  close: </abbr></dfn>
  param: $lookup:glossary$|$text$
  rank: -50
  key: Alt-G
block:
  type: div
  key: Alt-B
choice:
  type: complete
  open: <input class="version" type="radio" name="version"
  pipe: '>'
  close: ''
  param: id="$url(text)$"|$node$
choice-selected:
  type: complete
  open: <input checked class="version" type="radio" name="version"
  pipe: '>'
  close: ''
  param: id="$url(text)$"|$node$
choices:
  type: line
  open: <form class="choices">
  close: </form>
columns:
  type: div
desktop:
  type: div
  props:
    background: '#ff33ff'
dictionary:
  props:
    colour: '#0000ff'
    underline: true
  type: anchor
  param: http://dictionary.tinellb.com/lex/$text$.html#$url(lookup:lang)$|$upper(text)$
  language: true
  key: Alt-d
english:
  type: div
example:
  type: block
  open: <details class="example">
  close: </details>
  key: Alt-E
  props:
    background: '#66ff66'
external:
  props:
    colour: blue
    underline: true
  type: anchor
folded:
  type: line
  open: <summary class="folding">
  close: </summary>
  key: f
  props:
    left: 40
folding:
  type: block
  open: <details class="folding">
  close: </details>
  key: Alt-F
  props:
    background: '#ff66ff'
    off_key: Return
folding-open:
  type: block
  open: <details class="folding" open>
  close: </details>
  key: Alt-F
  props:
    background: '#ff66ff'
    off_key: Return
gloss:
  type: span
  props:
    italics: true
grammar-link:
  props:
    colour: '#000099'
    underline: true
  type: anchor
  param: $link:lookup:grammar$|$text$
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
highlight:
  type: span
  props:
    background: yellow
image:
  open: <img src="
  close: '">'
  param: $link:lookup:grammar$
  language: true
interlinear:
  type: div
  start: ' '
  end: ' '
internal:
  type: anchor
  props:
    colour: blue
    underline: true
ipa:
  props:
    font: lucida sans unicode
    ime: ipa
  type: span
  language: true
  key: Alt-i
left-columns:
  type: div
message:
  type: div
  props:
    colour: red
mobile:
  type: div
  rank: 150
  props:
    background: '#ffff33'
multiline:
  type: span
  rank: -100
ol:
  type: block
  start: <li>
  end: </li>
overline:
  type: span
  props:
    underline: true
paragraph:
  type: div
  start: <p>
  end: </p>
  rank: 150
season:
  open: <dfn class="season" title="
  pipe: '">'
  close: </dfn>
  param: $lookup:season$|$text$
sentence-list:
  props:
    left: 5
  type: div
stars:
  props:
    justify: right
  type: div
  start: <p>
  end: </p>
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
tbody:
  type: block
thead:
  type: block
tinellbian:
  props:
    font: tinellbian
    ime: tinellbian
  language: true
  keep_tags: true
  type: span
  key: Alt-t
transliteration:
  props:
    bold: true
  type: span
  language: true
ul:
  type: block
  start: <li>
  end: </li>
  key: Alt-U
wordlist:
  type: div
  key: Alt-W
  props:
    background: '#cccc99'
    left: 50