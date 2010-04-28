let mapleader = "`"
let maplocalleader = "|"

"""""""""" disable middle mouse button pasting
map   <MiddleMouse>    <Nop>
map   <2-MiddleMouse>  <Nop>
map   <3-MiddleMouse>  <Nop>
map   <4-MiddleMouse>  <Nop>
imap  <MiddleMouse>    <Nop>
imap  <2-MiddleMouse>  <Nop>
imap  <3-MiddleMouse>  <Nop>
imap  <4-MiddleMouse>  <Nop>


"""""""""" macvim
if has("gui_macvim")
  let macvim_skip_cmd_opt_movement = 1
  let macvim_hig_shift_movement = 0

  runtime macmap.vim
endif

"""""""""" shortcuts
nn  <silent> <M-F11>           :set fullscreen!<CR>
nn  <silent> TT                :call Tabnew()<CR>:e ~/todo/today.txt<CR>

"""""""""" tabs
nn  <silent> <D-w>             :q<CR>
nn  <silent> <Leader>w         :q<CR>
nn  <silent> <D-t>             :call Tabnew()<CR>
nn  <silent> <D-Left>          gT
nn  <silent> <Leader><Left>    gT
nn  <silent> <D-Right>         gt
nn  <silent> <Leader><Right>   gt
nn  <silent> <D-M-Left>        :call MoveTabLeft()<CR>
nn  <silent> <D-M-Right>       :call MoveTabRight()<CR>

"""""""""" global CWD manipulation
nn  <silent> <Leader>-         :call CwdUp()<CR>
nn  <silent> <Leader>=         :call CwdDown()<CR>
nn  <silent> <Leader>0         :call CwdCurrent()<CR>:call FizzyReIndexCwd()<CR>

"""""""""" windows, buffers and files
nn  <silent> <D-q>             :qa<CR>
nn  <silent> <Leader>q         :qa<CR>
ino <silent> <Leader>q         <C-o>:qa<CR>

nn  <silent> <D-s>             :up<CR>
nn  <silent> <Leader>s         :up<CR>
ino <silent> <Leader>q         <C-o>:up<CR>

nn  <silent> <D-w>             :bw<CR>gT
nn  <silent> <Leader>s         :bw<CR>gT
ino <silent> <Leader>q         <C-o>:bw<CR>gT

"""""""""" directory browsing
nn  <silent> <D-e>             :call BrowserFromCurrentDir()<CR>
nn  <silent> <Leader>e         :call BrowserFromCurrentDir()<CR>

nn  <silent> <D-E>             :call BrowserFromCurrentFilePath()<CR>
nn  <silent> <Leader>E         :call BrowserFromCurrentFilePath()<CR>

"""""""""" fuf-fizzy
nn  <silent> <D-r>             :call Tabnew()<CR>:FufFizzyFile<CR>
nn  <silent> <Leader>r         :call Tabnew()<CR>:FufFizzyFile<CR>

nn  <silent> <D-R>             :call Tabnew()<CR>:FufFizzyDir<CR>
nn  <silent> <Leader>R         :call Tabnew()<CR>:FufFizzyDir<CR>

nn  <silent> <D-\>             :call FizzyReIndexCwd()<CR>
nn  <silent> <Leader>\         :callFizzyReIndexCwd()<CR>

"""""""""" selections
nn   <special> <F2>            :let @/ = ""\|nohlsearch<CR>
ino  <special> <F2>            <C-o>:let @/ = ""\|nohlsearch<CR>

" select the most recent pasted text, generally works
" intended to be similar to gv
nnoremap gb '[V']

"""""""""" toggle switches
nn  <silent> <Leader>a         :set wrap!<CR>
nn  <silent> <Leader>l         :set list!<CR>
nn  <silent> <Leader>p         :set paste!<CR>

"""""""""" indenting
" TODO check with template expansion
" TODO check if works in normal mode
vn  <silent> <Tab>             >gv
vn  <silent> >>                >gv

vn  <silent> <S-Tab>           <gv
vn  <silent> <<                <gv

nn  <silent> <M-Right>         >>
nn  <silent> <M-Left>          <<

vn  <silent> <M-Right>         >gv
vn  <silent> <M-Left>          <gv

" TODO ?
ino <silent> <S-Tab>           <C-o><<<C-o>^

"""""""""" swap lines
" TODO make it work with visual mode (move a selected block up and down)
nn  <silent> <M-Up>            :call SwapUp()<CR>
nn  <silent> <M-Down>          :call SwapDown()<CR>

ino <silent> <M-Up>            <C-o>:call SwapUp()<CR>
ino <silent> <M-Down>          <C-o>:call SwapDown()<CR>

"""""""""" expansions
inoremap <C-space> <C-p>

"""""""""" <3 _
" helpers to use _ like a word boundary
" TODO maybe use smartcase.vim
nn           cr                ct_
nn           vr                vt_
nn           yr                yt_
nn           dr                dt_
nn           gur               gut_
nn           gUr               gUt_

nn           car               bct_
nn           var               bvt_
nn           yar               byt_
nn           dar               bdt_
nn           guar              bgut_
nn           gUar              bgUt_

nn           cir               F_lct_
nn           vir               F_lvt_
nn           yir               F_lyt_
nn           dir               F_ldt_
nn           guir              F_lgut_
nn           gUir              F_lgUt_

" TODO ?!
" nn >t vat>
" nn <t vat<

"""""""""" random
" don't lose indent, but makes file dirty on each edit
" ino <ESC> <TAB><BS><ESC>
" C-o & C-O form insert mode
ino          <S-CR>            <C-o>o
ino          <D-o>             <C-o>o
ino          <D-CR>            <C-o>O
ino          <D-O>             <C-o>O

"""""""""" I love having two control keys instead of two alts
ino          <M-space>         <C-p>
ino          <M-r>             <C-r>
" nn           <M-v>             <C-v>

"""""""""" other random TODO ?
" echo highlight group at cursor location
" map <leader>hl  :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Enclose
"vnoremap <silent> <M-{> >gv:<C-u>call Enclose('{', 1)<CR>
"vnoremap <silent> <M-/> :<C-u>call Enclose('/', 0)<CR>

" Execute last command
"inoremap <M-:> <C-o>:echo ':' . @: \| execute @:<CR>
"nnoremap <M-:> :echo ':' . @: \| execute @:<CR>

" remove duplicate newlines and whitespace
" call KeyMap('n',  'L',    'r',       ':%s/\n\n/\r/<CR>')
" call KeyMap('v',  'L',    'r',       ':s/\n\n/\r/<CR>')
" call KeyMap('n',  'L',    'R',       ':%s/\s\s*$//<CR>')
" call KeyMap('v',  'L',    'R',       ':s/\s\s*//<CR>')

" format sql
" :%s/\(FROM\|LEFT\|RIGHT\|INNER\|WHERE\|GROUP\|ORDER\|LIMIT,\)/\r<CR>:%s/\(AND\|,\)/&\r<CR>
