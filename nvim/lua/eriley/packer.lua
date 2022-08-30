-- This file can be loaded by calling `lua require('plugins)` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

print('packer')

return require("packer").startup(function()
  --Packer can manage itself
  use "wbthomason/packer.nvim"
  
  -- Tokyo Night theme
  use "folke/tokyonight.nvim"
  
  --Lua line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  --Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    branch = 'master',
    
    -- vim.opt.foldmethod     = 'expr'
    -- vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
    ---WORKAROUND
    vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
      group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
      callback = function()
        vim.opt.foldmethod     = 'expr'
        vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
      end
    })
    ---ENDWORKAROUND
  }

  use {
    'wuelnerdotexe/vim-astro'
  }

end)


