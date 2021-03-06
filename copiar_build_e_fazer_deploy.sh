rm -rf ./public/*
cp -pr ./vimwiki_html/* ./public
echo "@media (max-width: 1000px) {  body { margin: 0.5em 2em 0.5em 2em } }" >> ./public/style.css
echo "body { max-width: 40em; }" >> ./public/style.css

sed -i 's%incluir_aqui_formulario_inscricao%<link href="//cdn-images.mailchimp.com/embedcode/classic-10_7.css" rel="stylesheet" type="text/css"> <style type="text/css"> #mc_embed_signup{background:#fff; clear:left; font:14px Helvetica,Arial,sans-serif; } </style> <div id="mc_embed_signup"> <form action="https://tech.us6.list-manage.com/subscribe/post?u=0258c764d40e2e0e5603f750d\&amp;id=d0c9918c27" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate> <div id="mc_embed_signup_scroll"> <h2>Quer saber quando o curso estiver disponível? Inscreva-se abaixo!</h2> <div class="mc-field-group"> <label for="mce-EMAIL">E-mail <span class="asterisk">*</span> </label> <input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL"> </div> <div id="mce-responses" class="clear"> <div class="response" id="mce-error-response" style="display:none"></div> <div class="response" id="mce-success-response" style="display:none"></div> </div> <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_0258c764d40e2e0e5603f750d_d0c9918c27" tabindex="-1" value=""></div> <div class="clear"><input type="submit" value="Inscrever" name="subscribe" id="mc-embedded-subscribe" class="button"></div> </div> </form> </div>%g' ./public/Curso\ de\ Clojure.html

#echo "Removendo links na página do curso de Clojure"
#sed -i 's/<a[^>]*>/<b>/g' ./public/Curso\ Clojure.html
#sed -i 's/<\/a[^>]*>/<\/b>/g' ./public/Curso\ Clojure.html

firebase deploy

