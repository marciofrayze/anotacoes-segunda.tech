rm -rf ./public/*
cp -r ./vimwiki_html/* ./public
firebase deploy
