[{
    "tags": {
      "name": "default"
    },
    "props": {
      "size": 18
    }
  },
  {
    "tags": {
      "name": "columns",
      "start": "<div class=\"columns\">",
      "end": "</div>",
      "block": true
    }
  },
  {
    "tags": {
      "name": "mobiletable",
      "start": "<div class=\"mobile-table\">",
      "end": "</div>",
      "block": true
    }
  },
  {
    "tags": {
      "name": "leftcolumns",
      "start": "<div class=\"left-columns\">",
      "end": "</div>",
      "block": true
    }
  },
  {
    "tags": {
      "name": "table",
      "block": true,
      "separator": "tr"
    }
  },
  {
    "tags": {
      "name": "ol",
      "block": true,
      "separator": "li"
    }
  },
  {
    "tags": {
      "name": "ul",
      "block": true,
      "separator": "li"
    }
  },
  {
    "tags": {
      "name": "sentencelist",
      "start": "<div class=\"sentence-list\">",
      "end": "</div>",
      "block": true,
      "separator": "p"
    },
    "props": {
      "left": 5,
      "border": true
    }
  },
  {
    "tags": {
      "name": "wordlist",
      "start": "<div class=\"wordlist\">",
      "end": "</div>",
      "block": true,
      "separator": "p"
    },
    "props": {
      "left": 5,
      "border": true
    }
  },
  {
    "tags": {
      "name": "interlinear",
      "start": "<div class=\"interlinear\">",
      "end": "</div>",
      "block": true
    }
  },
  {
    "tags": {
      "name": "paragraph",
      "start": "<div class=\"paragraph\">",
      "end": "</div>",
      "block": true
    }
  },
  {
    "tags": {
      "name": "folding",
      "start": "<div class=\"folding\"><div class=\"block\">",
      "end": "</div></div>",
      "pipe": "</div><div class=\"block\">",
      "block": true
    }
  },
  {
    "tags": {
      "name": "stars",
      "start": "<div class=\"stars\">",
      "end": "</div>",
      "block": true
    },
    "props": {
      "justify": "right"
    }
  },
  {
    "tags": {
      "name": "h1",
      "block": true
    },
    "props": {
      "bold": true,
      "size": "+5"
    }
  },
  {
    "tags": {
      "name": "h2",
      "block": true
    },
    "props": {
      "bold": true,
      "size": "+4"
    }
  },
  {
    "tags": {
      "name": "h3",
      "block": true
    },
    "props": {
      "bold": true,
      "size": "+3"
    }
  },
  {
    "tags": {
      "name": "h4",
      "block": true
    },
    "props": {
      "bold": true,
      "size": "+2"
    }
  },
  {
    "tags": {
      "name": "message",
      "start": "<div class=\"message\">",
      "end": "</div>",
      "block": true
    },
    "props": {
      "colour": "red"
    }
  },
  {
    "tags": {
      "name": "gloss",
      "start": "<span class=\"gloss\">",
      "end": "</span>"
    },
    "props": {
      "italics": true
    }
  },
  {
    "tags": {
      "name": "multiline",
      "start": " ",
      "end": " ",
      "pipe": "<br>"
    }
  },
  {
    "tags": {
      "name": "external",
      "start": "<a href=\"",
      "pipe": "\">",
      "end": "</a>",
      "hyperlink": true
    },
    "props": {
      "colour": "blue",
      "underline": true
    }
  },
  {
    "tags": {
      "name": "internal",
      "start": "<a href=\"",
      "pipe": "\">",
      "end": "</a>",
      "hyperlink": true
    },
    "props": {
      "colour": "blue",
      "underline": true
    }
  },
  {
    "tags": {
      "name": "dictionary",
      "start": "<a href=\"dictionary.tinellb.com/lex/",
      "end": "\">"
    }
  },
  {
    "tags": {
      "name": "image",
      "start": "<img src=\"",
      "end": "\">"
    }
  },
  {
    "tags": {
      "name": "tinellbian",
      "start": "<span class=\"tinellbian\">",
      "end": "</span>",
      "language": "x-tlb-%l"
    },
    "props": {
      "font": "tinellbian"
    }
  },
  {
    "tags": {
      "name": "transliteration",
      "start": "<span class=\"transliteration\">",
      "end": "</span>",
      "language": "x-tlb-%l"

    },
    "props": {
      "bold": true
    }
  },
  {
    "tags": {
      "name": "abbr"
    }
  },
  {
    "tags": {
      "name": "highlight",
      "start": "<span class=\"highlight\">",
      "end": "<span>"
    },
    "props": {
      "background": "yellow"
    }
  },
  {
    "tags": {
      "name": "meaning",
      "start": "<span class=\"meaning\">",
      "end": "</span>"
    },
    "props": {
      "italics": true
    }
  },
  {
    "tags": {
      "name": "ipa",
      "start": "<span class=\"ipa\">",
      "end": "</span>"
    },
    "props": {
      "font": "lucida sans unicode"
    }
  },
  {
    "tags": {
      "name": "symbol",
      "start": "<span class=\"symbol\">",
      "end": "</span>"
    },
    "props": {
      "italics": true
    }
  },
  {
    "tags": {
      "name": "overline",
      "start": "<span class=\"overline\">",
      "end": "</span>"
    },
    "props": {
      "underline": true
    }
  },
  {
    "tags": {
      "name": "smallcaps",
      "start": "<span class=\"small-caps\">",
      "end": "</span>"
    },
    "props": {
      "font": "Alegreya SC"
    }
  },
  {
    "tags": {
      "name": "strong"
    },
    "props": {
      "bold": true
    }
  },
  {
    "tags": {
      "name": "sup"
    },
    "props": {
      "offset": "superscript"
    }
  },
  {
    "tags": {
      "name": "season",
      "start": "<span class=\"season\" title=\">",
      "end": "</span>",
      "pipe": "\">"
    },
    "props": {
      "size": "+2"
    }
  }
]