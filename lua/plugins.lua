vim.cmd('packadd packer.nvim')

return require('packer').startup(
  function()
	use 'wbthomason/packer.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/completion-nvim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use {'hrsh7th/nvim-cmp', event = 'InsertEnter', config = "require('plugins.cmp')"}
    use {'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp'}
    use {'hrsh7th/cmp-nvim-lsp', after = 'cmp-nvim-lua'}
    use {'hrsh7th/cmp-buffer', after = 'cmp-nvim-lsp'}
    use {'hrsh7th/cmp-path', after = 'cmp-buffer'}
    use {'hrsh7th/cmp-calc', after = 'cmp-path'}
    use {'tzachar/cmp-tabnine', run = './install.sh', requires = 'hrsh7th/nvim-cmp', after = 'cmp-calc'}
    use {'David-Kunz/cmp-npm', after = 'cmp-tabnine', requires = 'nvim-lua/plenary.nvim', config = "require('plugins.cmp-npm')"}
    use {'saadparwaiz1/cmp_luasnip', after = 'cmp-npm'}
    use {"ellisonleao/gruvbox.nvim"}
    use {
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end 
}
  end
  )

