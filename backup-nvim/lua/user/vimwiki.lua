-- local status_ok, vimwiki = pcall(require, "vimwiki")
-- if not status_ok then
--   return
-- end
-- vim.g.vimwiki_ext2syntax = {['.md'] = 'markdown', ['.markdown'] = 'markdown', ['.mdown'] = 'markdown'}
-- vim.g.vimwiki_list = {{path = '~/vimwiki', syntax = 'markdown', ext = '.md'}}
vim.cmd([[
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	map <leader>v :VimwikiIndex<CR>
	let g:vimwiki_list = [{'path': '~/.local/share/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
]], false)
