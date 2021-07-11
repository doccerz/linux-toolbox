find <directory> -name '*.txt' -exec sed -i 's/<text to find>/<replace with text>/g' {} +
find <directory> -name '*.txt' | xargs sed -i 's/<text to find>/<replace with text>/g'
$ grep -Rl '<text to find>' <directory> | xargs sed -i 's/<text to find>/<replace with text>/g'