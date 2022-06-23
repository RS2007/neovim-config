 require('nvim-treesitter.configs').setup {
  ensure_installed = {
         "yaml",
         "markdown",
         "comment",
         "css",
         "html",
         "javascript",
         "json",
         "lua",
         "php",
         "regex",
         "scss",
         "vim",
         "vue",
         "java"
     },
  highlight = {
    enable = true,
    disable = { "html", "bash" },
  },
  indent = {
    enable = true,
  },
}
