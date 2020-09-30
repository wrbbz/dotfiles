c.backend = "webengine"

c.auto_save.session = True

c.editor.command = ["alacritty", "-e", "vim", "{}"]
c.editor.encoding = "utf-8"

c.aliases = {
    "w": "session-save",
    "q": "quit",
    "wq": "quit --save",
    "pics": "open https://unsplash.com",
    "snow": "open https://whitelines.com/photos/wallpapers",
    "nvidia": "open https://compute.nvidia.com",
    "proxy-gateway": "set content.proxy socks://localhost:8118/",
    "proxy-off": "set content.proxy system",
    "mpv": "spawn mpv {url} --ytdl-raw-options=mark-watched=",
    "ydl": "spawn youtube-dl {url}",
    "gh": "open https://github.com/ArsenyZorin",
    "gl": "open https://gitlab.com/ArsenyZorin",
    "cloud": "open https://cloud.spbpu.com",
    "ff": "spawn firefox {url}",
    "yt": "open https://youtube.com/feed/subscriptions",
    "gb": "open https://github.com/morhetz/gruvbox",
    "giva": "open https://docs.gitlab.com/ee/ci/variables/predefined_variables.html",
}

# AUR package: qt5-webengine-widevine
c.qt.args = ["ppapi-widevine-path=/usr/lib/qt/plugins/ppapi/libwidevinecdmadapter.so"]

c.url.searchengines = {
    "DEFAULT": "https://duckduckgo.com/?q={}",
    "g": "https://www.google.com/search?hl=en&q={}",
    "tpb": "https://thepiratebay.org/search/{}",
    "aw": "https://wiki.archlinux.org/?search={}",
    "yt": "https://youtube.com/results?search_query={}",
    "w": "https://en.wikipedia.org/?search={}",
    "ya": "https://yandex.ru/?search={}",
    "ali": "https://ru.aliexpress.com/wholesale?SearchText={}",
    "aur": "https://aur.archlinux.org/packages/?O=0&K={}",
    "ebay": "https://www.ebay.com/sch/items/?_nkw={}",
    "amazon": "https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords={}",
    "ghub": "https://github.com/search?utf8=/%E2%9C%93&q={}&type=",
    "maps": "https://openstreetmap.org/search?query={}",
    "gmaps": "https://www.google.ru/maps/search/{}",
    "market": "https://market.yandex.ru/search?cvredirect=2&text={}&local-offers-first=1",
    "comics": "http://getcomics.info/?s={}",
    "crates": "https://crates.io/search?q={}",
    "dh": "https://hub.docker.com/search?q={}&type=image",
    "quay": "https://quay.io/search?q={}",
    "do": "https://www.digitalocean.com/community/search?q={}",
    "pac": "https://www.archlinux.org/packages/?q={}",
    "enru": "https://translate.google.com/#en/ru/{}",
    "ruen": "https://translate.google.com/#ru/en/{}",
    "http": "https://httpstatuses.com/{}",
}

config.bind("<Alt-h>", "open -t https://github.com/ArsenyZorin")
config.bind("<Ctrl-l>", "open -t https://gitlab.com/ArsenyZorin")
config.bind("<Alt-m>", "spawn mpv {url} --ytdl-raw-options=mark-watched=")

# Gruvbox light colours
c.colors.completion.fg = '#ebdbb2'
c.colors.completion.odd.bg = '#282828'
c.colors.completion.even.bg = '#3c3836'
c.colors.completion.category.fg = '#ebdbb2'
c.colors.completion.category.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 #282828, stop:1 #665c54)'
c.colors.completion.category.border.top = 'black'
c.colors.completion.category.border.bottom = 'black'

c.colors.completion.item.selected.bg = '#d79921'
c.colors.statusbar.normal.fg = '#ebdbb2'
c.colors.statusbar.normal.bg = '#282828'
c.colors.statusbar.command.fg = '#ebdbb2'
c.colors.statusbar.command.bg = '#282828'
c.colors.statusbar.caret.bg = '#cc241d'
c.colors.statusbar.progress.bg = '#ebdbb2'
c.colors.statusbar.url.success.http.fg = '#d79921'
c.colors.statusbar.url.success.https.fg = '#98971a'
c.colors.statusbar.url.error.fg = '#fb4934'
c.colors.statusbar.url.warn.fg = '#d79921'
c.colors.statusbar.url.hover.fg = '#689d6a'

c.colors.tabs.odd.fg = '#ebdbb2'
c.colors.tabs.odd.bg = '#a89984'
c.colors.tabs.even.fg = '#ebdbb2'
c.colors.tabs.even.bg = '#928374'
c.colors.tabs.selected.odd.fg = '#ebdbb2'
c.colors.tabs.selected.odd.bg = '#282828'
c.colors.tabs.selected.even.fg = '#ebdbb2'
c.colors.tabs.selected.even.bg = '#282828'

c.colors.downloads.bar.bg = '#3c3836'
c.colors.downloads.start.bg = '#665c54'
c.colors.downloads.stop.bg = '#b8bb26'
c.colors.webpage.bg = '#282828'

c.colors.messages.error.fg = '#ebdbb2'
c.colors.messages.warning.fg = '#ebdbb2'

c.colors.prompts.fg = '#ebdbb2'
c.colors.prompts.bg = '#3c3836'
