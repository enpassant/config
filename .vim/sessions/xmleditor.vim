
augroup SESSIONS
au! 
cd /home/kalman/public_html/xmleditor
badd xmleditor.js
au BufReadPost xmleditor.js setlocal fenc=utf-8 | au! SESSIONS BufReadPost xmleditor.js
badd +36 melleklet_fo.xsl
augroup END
edit +25 xmleditor.js
let v:this_session = "/home/kalman/.vim/sessions/xmleditor.vim"
