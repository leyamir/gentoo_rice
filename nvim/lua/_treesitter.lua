require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "bash", "python", "c" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
--:TSInstall <language_to_install> to install new language
