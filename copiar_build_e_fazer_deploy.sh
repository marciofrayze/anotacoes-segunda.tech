rm -rf ./public/*
cp -pr ./vimwiki_html/* ./public
echo "@media (max-width: 1000px) {  body { margin: 0.5em 2em 0.5em 2em } }" >> ./public/style.css
echo "body { max-width: 40em; }" >> ./public/style.css
firebase deploy
