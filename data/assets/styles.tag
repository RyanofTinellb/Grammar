abbr:
  close: </abbr></dfn>
  keys:
    'off': space
    'on': Alt-G
  open: <dfn><abbr class="glossary" title="
  param:
    string: $lookup$|$text$
    category: glossary
  pipe: '">'
  props:
    font: Felix Titling
    size: 70
  rank: -50
  type: span
abternal-link:
  key: Alt-a
  param:
    string: $link$|$text$
    link: $grammar(lookup)$
    category: abternal
  props:
    colour: '#33c'
  type: anchor
b:
  key: b
  props:
    bold: true
block:
  key: Alt-b
  pipe: ''
  prequel: <li>
  sequel: </li>
  props:
    border: true
  rank: 90
  type: ul
button:
  open: <button onclick="
  pipe: '">'
  props:
    background: '#ffd'
checkbox:
  close: '" />'
  end: ''
  open: <input type="checkbox" id="
  pipe: '" onclick="'
  props:
    background: '#fc6'
  start: ''
cite:
  keys:
    'off': Return
    'on': Alt-c
  props:
    italics: true
columns:
  type: div
  pipe: ''
components: ol
default:
  props:
    font: Calibri
    top: 5
    bottom: 5
    ime: autocorrect
    size: 16
desktop:
  props:
    background: '#ff33ff'
  rank: 150
  type: div
details|example:
  key: Alt-E
  pipe: '&NoBreak;'
  props:
    background: '#cfc'
  type: block
details|folding:
  key: Alt-F
  pipe: '&NoBreak;'
  props:
    left: 20
  type: block
dictionary:
  keys:
    'off': space
    'on': Alt-n
  language: true
  param:
    string: $link$|$text$
    link: http://dictionary.tinellb.com/lex/$dictionary(text)$.html#$grammar(lookup)$
    category: lang
  props:
    colour: '#0000ff'
    ime: links
    underline: true
  type: anchor
div-id:
  close: </div>
  open: <div id="
  pipe: '">'
  props:
    background: '#f6c'
  type: line
english: div
external:
  props:
    colour: blue
    underline: true
  type: anchor
external-link:
  key: Alt-e
  param:
    string: $lookup$|$node$
    category: external
  props:
    colour: '#33c'
  type: anchor
gloss:
  keys:
    'off': Return
    'on': Alt-g
  props:
    italics: true
  type: span
h1:
  type: heading
  keys:
    'off': Return
    'on': 1
  props:
    bold: true
    size: 180
h2:
  keys:
    'off': Return
    'on': 2
  props:
    bold: true
    size: 150
    left: 30
  type: heading
h3:
  keys:
    'off': Return
    'on': 3
  props:
    bold: true
    size: 130
    left: 60
  type: heading
h4:
  keys:
    'off': Return
    'on': 4
  props:
    bold: true
    size: 110
    left: 90
  type: heading
h5:
  keys:
    'off': Return
    'on': 5
  props:
    bold: true
    size: 90
    left: 120
  type: heading
heading-link:
  close: </a></h2>
  language: true
  open: <h2><a
  param:
    string: href="$link$"|$node$
    link: $lookup$
    category: internal
  pipe: '>'
  props:
    bold: true
    colour: '#3366cc'
    underline: true
  type: heading
highlight:
  props:
    background: yellow
  type: span
i:
  key: i
  props:
    italics: true
image:
  close: '">'
  open: <img src="
  param:
    string: $lookup$
    category: external
  props:
    background: '#9f9'
interlinear:
  end: ''
  start: ''
  type: div
internal:
  props:
    colour: blue
    underline: true
  type: anchor
internal-link:
  language: true
  param:
    string: $link$|$node$
    link: $grammar(lookup)$
    category: internal
  props:
    colour: '#000099'
    underline: true
  type: anchor
  key: Alt-I
internal-script:
  close: '></script>'
  end: '"'
  open: <script src=
  props:
    background: '#cf6'
  start: '"'
  type: block
ipa:
  keys:
    'off': Return
    'on': Alt-i
  language: true
  props:
    font: lucida sans unicode
    ime: ipa
  type: span
label:
  props:
    colour: '#09f'
landscape: div
left-columns: div
message:
  props:
    colour: red
  type: div
mobile:
  props:
    background: '#ffff33'
  rank: 150
  type: div
multiline:
  pipe: <br>
  rank: -100
  type: span
nextline: span
overline:
  props:
    underline: true
  type: span
paragraph:
  end: </p>
  open: <hr><div class="paragraph">
  rank: 150
  start: <p>
  type: div
particles: ul
portrait: div
script:
  props:
    background: '#cc3'
  type: line
season:
  close: </dfn>
  open: <dfn class="season" title="
  param:
    string: $lookup$|$node$
    category: season
  pipe: '">'
sentence-list:
  props:
    left: 5
  type: div
stars:
  end: </p>
  props:
    justify: right
  start: <p>
  type: div
strong:
  props:
    bold: true
    colour: '#f00'
  rank: -20
summary|folding:
  keys:
    'off': Return
    'on': f
  props:
    colour: '#0cc'
  type: line
sup:
  props:
    offset: superscript
symbol:
  props:
    italics: true
  type: span
table: table
table|alphabet: table
table|numbers:
  type: table
  props:
    background: '#c9f'
tbody:
  props:
    background: '#99f'
  type: block
textarea-id:
  close: </textarea>
  open: <textarea id="
  pipe: '">'
  props:
    background: '#ff9'
  type: line
textarea-text: blank
thead:
  props:
    background: '#66f'
  type: block
tinellbian:
  keep_tags: true
  keys:
    'off': space
    'on': Alt-t
  language: true
  props:
    font: tinellbian
    ime: tinellbian
  type: span
transliteration:
  keys:
    'off': Return
    'on': Alt-T
  language: true
  props:
    bold: true
    ime: transliteration
  type: span
ul:
  key: Alt-U
  type: ul
ul#features:
  props:
    background: '#fec'
  type: ul
ul#rewrite:
  props:
    background: '#ffc'
  type: ul
wordlist:
  key: Alt-W
  props:
    background: '#ffc'
  type: ul
