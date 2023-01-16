let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/work/OpenComputers
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd README.md
set stal=2
tabnew
tabrewind
edit ~/work/OpenComputers/README.md
set splitbelow splitright
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 43 - ((27 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
43
normal! 0
tabnext
edit ~/work/OpenComputers/lib/jontest.lua
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 0 + 15) / 31)
exe '2resize ' . ((&lines * 28 + 15) / 31)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 26 - ((24 * winheight(0) + 0) / 0)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0
wincmd w
argglobal
if bufexists("~/work/OpenComputers/tests/test.lua") | buffer ~/work/OpenComputers/tests/test.lua | else | edit ~/work/OpenComputers/tests/test.lua | endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 10 - ((7 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 08|
wincmd w
exe '1resize ' . ((&lines * 0 + 15) / 31)
exe '2resize ' . ((&lines * 28 + 15) / 31)
tabnext 1
set stal=1
badd +43 ~/work/OpenComputers/README.md
badd +16 ~/work/OpenComputers/lib/components/navigation.lua
badd +27 ~/work/OpenComputers/lib/robot.lua
badd +4 ~/work/OpenComputers/lib/jontest.lua
badd +4 ~/work/OpenComputers/init.sh
badd +23 ~/work/OpenComputers/tests/test.lua
badd +4 ~/work/OpenComputers/tests/robot.lua
badd +4 ~/work/OpenComputers/lib/component.lua
badd +7 ~/work/OpenComputers/tests/navigation.lua
badd +27 ~/work/OpenComputers/lib/inspect.lua
badd +14 ~/work/OpenComputers/lib/components/sides.lua
badd +3 ~/work/OpenComputers/lib/sides.lua
badd +4 ~/work/OpenComputers/tests/sides.lua
badd +221 ~/work/OpenComputers/lib/components/redstone.lua
badd +14 ~/work/OpenComputers/tests/redstone.lua
badd +6 ~/work/OpenComputers/lib/colors.lua
badd +21 ~/work/OpenComputers/tests/colors.lua
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=0 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
let g:this_obsession_status = 2
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
