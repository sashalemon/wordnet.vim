" wordnet.vim
" By Tim Harper (http://tim.theenchanter.com/)
"
" OVERVIEW:
" Easily look up the definition of the word under your cursor via wordnet
" (http://wordnet.princeton.edu/). Definition is shown in a new region, with
" syntax highlighting for easier reading.
"
" INSTRUCTIONS:
" 1) Configure your wordnet path, if it's in a non-standard path (in your
" vimrc)
" let g:wordnet_path = "/usr/local/WordNet-3.0/bin/"
"
" 2) highlight or put your cursor over a word, and:
" <Leader>wnd - Define the word
" <Leader>wnb - Launch the wordnet browser for the word.
" <Leader>wns - Find synonyms for the word

command! -nargs=+ Wordnet call wordnet#overviews("<args>")

noremap  <Leader>wnd     :call wordnet#overviews("<C-r>=expand("<cword>")<CR>")<CR>
noremap  <Leader>wnb :call wordnet#browse("<C-r>=expand("<cword>")<CR>")<CR>
noremap  <Leader>wns   :call wordnet#synonyms("<C-r>=expand("<cword>")<CR>")<CR>

let s:wordnet_buffer_id = -1

if !exists('g:wordnet_path')
  let g:wordnet_path = ""
endif
