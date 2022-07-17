tagger:
  content:
    end: </div
    start: <div class="content">
  doctype:
    end: '>'
    start: '<!DOCTYPE '
  flex:
    end: </div>
    start: <div class="flex">
  icon:
    end: '">'
    hyperlink: true
    start: <link rel="icon" type="image/png" href="/
  meta:
    end: '>'
    start: '<meta '
  navpane:
    end: </div>
    start: <div class="nav-pane">
  stylesheet:
    end: '">'
    hyperlink: true
    start: <link rel="stylesheet" type="text/css" href="/
text:
- <doctype>html</doctype>
- <html>
- <head>
- <meta>name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes"</meta>
- <meta>charset="utf-8"</meta>
- <title><param>category title</param> - Tinellbian Languages</title>
- <stylesheet>data/stylesheets/basic_style.css</stylesheet>
- <stylesheet>data/stylesheets/style.css</stylesheet>
- <icon>data/images/favicon.png</icon>
- <template>search script</template>
- </head>
- <body>
- <flex>
- <navpane>
- <template>family links</template>
- </navpane>
- <content>
- <param>nav-footer</param>
- <param>title heading</param>
- <template>contents</template>
- <param>toc</param>
- <template>copyright</template>
- <template>show javascript</template>
- <template>highlight search term</template>
- <param>scripts</param>
- </content>
- </flex>
- </body>
- </html>
