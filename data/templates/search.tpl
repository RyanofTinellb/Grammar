{
    "text": [
        "<doctype>html</doctype>",
        "<html>",
        "<head>",
        "<meta>name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=yes\"</meta>",
        "<meta>charset=\"utf-8\"</meta>",
        "<title>Search Tinellian Grammar</title>",
        "<stylesheet>/basic_style.css</stylesheet>",
        "<stylesheet>/style.css</stylesheet>",
        "<icon>/favicon.png</icon>",
        "<template>search-script</template>",
        "</head>",
        "<body>",
        "<flex>",
        "<nav-pane>",
        "<template>family links</template>",
        "</nav-pane>",
        "<content>",
        "<h1> Search Tinellbian Grammar</h1>",
        "<form>",
        "<input type=\"text\" class=\"term\" id=\"term\" name=\"term\" placeholder=\"Search...\"><br>",
        "<input type=\"submit\" class=\"submit\" value=\"Search\">",
        "<input type=\"radio\" name=\"andor\" id=\"and\" value=\"and\" checked=\"true\">AND",
        "<input type = \"radio\" name=\"andor\" id=\"or\" value=\"or\">OR",
        "</form>",
        "<div class=\"results\" id=\"results\" name=\"results\"></div>",
        "<script src=\"search.js\"></script>",
        "<script>",
        "for (elt of document.getElementsByClassName('javascript')) {",
        "elt.style.display = \"block\";",
        "}",
        "</script>",

        "</content>",
        "</flex>",
        "</body>",
        "</html>"
    ],
    "tagger": {
        "doctype": {
            "start": "<!DOCTYPE ",
            "end": ">"
        },
        "meta": {
            "start": "<meta ",
            "end": ">"
        },
        "flex": {
            "start": "<div class=\"flex\">",
            "end": "</div>"
        },
        "nav-pane": {
            "start": "<div class=\"nav-pane\">",
            "end": "</div>"
        },
        "content": {
            "start": "<div class=\"content\">",
            "end": "</div"
        },
        "icon": {
            "start": "<link rel=\"icon\" type=\"image/png\" href=\"",
            "end": "\">",
            "hyperlink": true
        },
        "stylesheet": {
            "start": "<link rel=\"stylesheet\" type=\"text/css\" href=\"",
            "end": "\"",
            "hyperlink": true
        }
    }
}