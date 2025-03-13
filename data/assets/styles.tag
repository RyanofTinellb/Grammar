abbr:
  close: </abbr></dfn>
  key: Alt-G
  open: <dfn><abbr class="glossary" title="
  param: $lookup:glossary$|$text$
  pipe: '">'
  props:
    font: Felix Titling
    size: 70
  rank: -50
  type: span
block:
  key: Alt-b
  type: div
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
default:
  props:
    font: Garamond
    ime: autocorrect
    size: 18
desktop:
  props:
    background: '#ff33ff'
  rank: 150
  type: div
details|example:
  key: Alt-E
  pipe: '&NoBreak;'
  props:
    background: '#66ff66'
  type: block
details|folding:
  key: Alt-F
  pipe: '&NoBreak;'
  props:
    background: '#ffccff'
    off_key: Return
  type: block
dictionary:
  keys:
    'off': space
    'on': Alt-n
  language: true
  param: http://dictionary.tinellb.com/lex/$text$.html#$url(lookup:lang)$|$upper(text)$
  props:
    colour: '#0000ff'
    ime: transliteration
    underline: true
  type: anchor
div-id:
  close: </div>
  open: <div id="
  pipe: '">'
  props:
    background: '#f6c'
  type: line
english:
  type: div
external:
  props:
    colour: blue
    underline: true
  type: anchor
external-link:
  key: Alt-e
  param: $lookup:external$|$text$
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
grammar-link:
  language: true
  param: $link:lookup:grammar$|$text$
  props:
    colour: '#000099'
    underline: true
  type: anchor
h2:
  keys:
    'off': Return
    'on': KeyPress-2
  props:
    bold: true
    size: 150
  type: heading
h3:
  keys:
    'off': Return
    'on': KeyPress-3
  props:
    bold: true
    size: 140
  type: heading
h4:
  props:
    bold: true
    size: 130
  type: heading
h5:
  props:
    bold: true
    size: 120
  type: heading
heading-link:
  close: </a></h2>
  language: true
  open: <h2><a
  param: href="$link:lookup:grammar$"|$text$
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
  language: true
  open: <img src="
  param: $link:lookup:grammar$
interlinear:
  end: ''
  start: ''
  type: div
internal:
  props:
    colour: blue
    underline: true
  type: anchor
internal-script:
  close: '></script>'
  end: '"'
  open: <script src=
  props:
    background: '#cf6'
  start: '"'
  type: block
ipa:
  key: Alt-i
  language: true
  props:
    font: lucida sans unicode
    ime: ipa
  type: span
label:
  props:
    colour: '#09f'
landscape:
  type: div
left-columns:
  type: div
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
  rank: -100
  type: span
nextline:
  type: span
ol:
  type: ol
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
portrait:
  type: div
script:
  props:
    background: '#cc3'
  type: line
season:
  close: </dfn>
  open: <dfn class="season" title="
  param: $lookup:season$|$text$
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
  rank: -20
summary|folding:
  keys:
    'off': Return
    'on': f
  props:
    left: 40
  type: line
sup:
  props:
    offset: superscript
symbol:
  props:
    italics: true
  type: span
table:
  type: table
table|alphabet:
  type: table
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
textarea-text:
  type: blank
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
  language: true
  props:
    bold: true
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
    background: '#cccc99'
    left: 50
  type: div
