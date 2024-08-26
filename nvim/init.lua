-- This setup require terminal have font Nerd Font, and system have program: fzf, rg(ripgrep)
vim.cmd([[
call plug#begin()
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'karb94/neoscroll.nvim'
    Plug 'lukas-reineke/indent-blankline.nvim'
    Plug 'phaazon/hop.nvim'
    Plug 'kyazdani42/nvim-web-devicons' 
    Plug 'kyazdani42/nvim-tree.lua'
    Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
    Plug 'nvim-lualine/lualine.nvim'
call plug#end()
]])
require('_treesitter')
require('_neoscroll')
require('_indent')
require('_hop')
require('_nvimtree')
require('_lualine')

vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd [[colorscheme moonfly]]
vim.g.moonflyVirtualTextColor = true
vim.g.moonflyNormalFloat = true
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.wrap = false
vim.opt.cursorline = true
vim.opt.hlsearch = false
vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " "
vim.api.nvim_set_keymap("i", "jj", "<ESC>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Left>", "0", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Right>", "$", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<M-h>", "0", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<M-l>", "$", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>f", ":Rg<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeFocus<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>h", ":HopWordCurrentLineBC<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>j", ":HopWordAC<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>k", ":HopWordBC<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>l", ":HopWordCurrentLineAC<CR>", {noremap = true, silent = true})
