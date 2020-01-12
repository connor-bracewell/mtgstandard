rm -rf web
mkdir web web/standard web/brawl tmp
jq -s '.[0] * .[1]' src/sets.json src/standard.json > tmp/standard_final.json
jq -s '.[0] * .[1]' src/sets.json src/brawl.json > tmp/brawl_final.json
mustache tmp/standard_final.json src/index.mustache > web/standard/index.html
mustache tmp/brawl_final.json    src/index.mustache > web/brawl/index.html
