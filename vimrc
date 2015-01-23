" Path to the bundle folder
let vimsettings_bundlepath = "~/.vim/bundle"
" Git username of vim-settings
let vimsettings_username = "dpsutton"

" Vundle setup
exec ":set runtimepath+=" . vimsettings_bundlepath . "/vundle/"
call vundle#rc(vimsettings_bundlepath)
Plugin 'gmarik/vundle'

" Include vim-settings
Plugin vimsettings_username . '/vim-settings'

" Load vim-settings.vim and tie it to $VIMSETTINGS
let $VIMSETTINGS = vimsettings_bundlepath . "/vim-settings/vim-settings.vim"
if filereadable(glob($VIMSETTINGS))
  exec ":so " . $VIMSETTINGS
endif

" vim-settings init helper
if exists("vimsettings_loaded")
  finish
endif
let vimsettings_loaded = 1
function! VimSettingsInit()
  execute ":PluginInstall"
  execute ":bd"
  execute ":so $MYVIMRC"
  execute ":PluginInstall"
  execute ":bd"
  execute ":so $MYVIMRC"
endfunction
command! -bar -nargs=0 VimSettingsInit call VimSettingsInit()
