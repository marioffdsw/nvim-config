let g:airline#themes#exort#palette = {}

" Color palette
let s:cterm_termbg    = 237  " Background for branch and file format blocks
let s:gui_termbg      = '#5F5F5F'
let s:cterm_termfg    = 144  " Foreground for branch and file format blocks
let s:gui_termfg      = '#AFAF87'

let s:cterm_termbg2   = 234  " Background for middle block
let s:gui_termbg2     = '#1C1C1C'
let s:cterm_termfg2   = 39   " Foreground for middle block
let s:gui_termfg2     = '#F5F5F5'

let s:cterm_normalbg  = 27   " Background for normal mode and file position blocks
let s:gui_normalbg    = '#007ACC'
let s:cterm_normalfg  = 15   " Foreground for normal mode and file position blocks
let s:gui_normalfg    = '#FFFFFF'

let s:cterm_insertbg  = 70   " Background for insert mode and file position blocks
let s:gui_insertbg    = '#fb002b'
let s:cterm_insertfg  = 15   " Foreground for insert mode and file position blocks
let s:gui_insertfg    = '#FFFFFF'

let s:cterm_visualbg  = 166  " Background for visual mode and file position blocks
let s:gui_visualbg    = '#008d2e'
let s:cterm_visualfg  = 15   " Foreground for visual mode and file position blocks
let s:gui_visualfg    = '#FFFFFF'

let s:cterm_replacebg = 88   " Background for replace mode and file position blocks
let s:gui_replacebg   = '#d75f00'
let s:cterm_replacefg = 15   " Foreground for replace mode and file position blocks
let s:gui_replacefg   = '#FFFFFF'

let s:cterm_alert     = 88   " Modified file alert color
let s:gui_alert       = '#870000'

let s:cterm_inactivebg = 234 " Background for inactive mode
let s:gui_inactivebg   = '#1C1C1C'
let s:cterm_inactivefg = 239 " Foreground for inactive mode
let s:gui_inactivefg   = '#4E4E4E'

" Branch and file format
let s:BB = [s:gui_termfg, s:gui_termbg, s:cterm_termfg, s:cterm_termbg] " Branch and file format blocks

" Normal mode
let s:N1 = [s:gui_normalfg, s:gui_normalbg, s:cterm_normalfg, s:cterm_normalbg] " Outside blocks in normal mode
let s:N2 = [s:gui_termfg2, s:gui_termbg2, s:cterm_normalbg, s:cterm_termbg2]     " Middle block
let g:airline#themes#exort#palette.normal = airline#themes#generate_color_map(s:N1, s:BB, s:N2)
let g:airline#themes#exort#palette.normal_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" Insert mode
let s:I1 = [s:gui_insertfg, s:gui_insertbg, s:cterm_insertfg, s:cterm_insertbg] " Outside blocks in insert mode
let s:I2 = [s:gui_insertbg, s:gui_termbg2, s:cterm_insertbg, s:cterm_termbg2]   " Middle block
let g:airline#themes#exort#palette.insert = airline#themes#generate_color_map(s:I1, s:BB, s:I2)
let g:airline#themes#exort#palette.insert_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" Replace mode
let s:R1 = [s:gui_replacefg, s:gui_replacebg, s:cterm_replacefg, s:cterm_replacebg]  " Outside blocks in replace mode
let s:R2 = [s:gui_termfg, s:gui_termbg2, s:cterm_termfg, s:cterm_termbg2]            " Middle block
let g:airline#themes#exort#palette.replace = airline#themes#generate_color_map(s:R1, s:BB, s:R2)
let g:airline#themes#exort#palette.replace_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" Visual mode
let s:V1 = [s:gui_visualfg, s:gui_visualbg, s:cterm_visualfg, s:cterm_visualbg] " Outside blocks in visual mode
let s:V2 = [s:gui_visualbg, s:gui_termbg2, s:cterm_visualbg, s:cterm_termbg2]   " Middle block
let g:airline#themes#exort#palette.visual = airline#themes#generate_color_map(s:V1, s:BB, s:V2)
let g:airline#themes#exort#palette.visual_modified = {'airline_c': [s:gui_alert, s:gui_termbg2, s:cterm_alert, s:cterm_termbg2, 'bold'] ,}

" Inactive mode
let s:IA1 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let s:IA2 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let s:IA3 = [s:gui_inactivefg, s:gui_inactivebg, s:cterm_inactivefg, s:cterm_inactivebg, '']
let g:airline#themes#exort#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" CtrlP plugin colors
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#exort#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [s:gui_normalfg, s:gui_normalbg, s:cterm_normalfg, s:cterm_normalbg, ''],
      \ [s:gui_termfg, s:gui_termbg, s:cterm_termfg, s:cterm_termbg, ''],
      \ [s:gui_termfg2, s:gui_termbg2, s:cterm_termfg2, s:cterm_termbg2, 'bold'])
