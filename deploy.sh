rm -rf web
mkdir web web/standard web/brawl
mustache src/standard.json src/index.mustache > web/standard/index.html
mustache src/brawl.json    src/index.mustache > web/brawl/index.html
