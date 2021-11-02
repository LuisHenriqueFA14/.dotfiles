let g:startify_lists = [
          \ { 'type': 'files',     'header': startify#center(['   Files'])                        },
          \ { 'type': 'dir',       'header': startify#center(['   Current Directory '. getcwd()]) },
          \ { 'type': 'sessions',  'header': startify#center(['   Sessions'])                     },
          \ { 'type': 'bookmarks', 'header': startify#center(['   Bookmarks'])                    },
          \ ]

" let g:startify_custom_header = startify#center([
        " \ '',
        " \ '__     ___           ',
        " \ '\ \   / (_)_ __ ___  ',
        " \ ' \ \ / /| | `_ ` _ \ ',
        " \ '  \ V / | | | | | | |',
        " \ '   \_/  |_|_| |_| |_|',
        " \ '',
        " \ '',
        " \ ])
"
        
let g:startify_custom_header = startify#center([
        \'',
        \'          __                ',
        \'  __  __ /\_\    ___ ___    ',
        \' /\ \/\ \\/\ \ /` __` __`\  ',
        \' \ \ \_/ |\ \ \/\ \/\ \/\ \ ',
        \'  \ \___/  \ \_\ \_\ \_\ \_\',
        \'   \/__/    \/_/\/_/\/_/\/_/',
        \'',
        \'',
        \ ])

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
        return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_enable_special = 1

let g:startify_center = 80
