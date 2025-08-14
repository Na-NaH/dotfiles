--------------------- Configs & Plugins ---------------------

require "configs.settings"
require "configs.keymaps"
require "configs.lazy"

--------------------- Providers ---------------------

vim.cmd [[
  let g:loaded_ruby_provider = 0
  let g:loaded_perl_provider = 0
  let g:loaded_node_provider = 0
  let g:python3_host_prog = '/usr/bin/python3'
]]

