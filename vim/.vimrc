"Enable syntax highlighting
syntax enable

"Enable smart indentation and make tab to be 4 spaces
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"Enable lines numbering
set number

"Add /bin/bash shebang to *.sh files
autocmd BufNewFile *.sh 0put = '#!/bin/bash'

