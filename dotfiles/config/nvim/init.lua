local cmd = vim.cmd  -- to execute Vim commands e.g. cmd("pwd")
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

require "paq" {
    "savq/paq-nvim"; -- Let Paq manage itself
    "junegunn/fzf.vim";
    "nvim-lua/plenary.nvim";
    "lewis6991/gitsigns.nvim";
    "lukas-reineke/indent-blankline.nvim";
    "dstein64/nvim-scrollview";
    "rmehri01/onenord.nvim";
    "nvim-treesitter/nvim-treesitter";
    "p00f/nvim-ts-rainbow";
    "terrortylor/nvim-comment";
    "mboughaba/i3config.vim";
    "ap/vim-css-color";
    "kyazdani42/nvim-web-devicons";
    "kyazdani42/nvim-tree.lua";
    "hoob3rt/lualine.nvim";
    {"iamcco/markdown-preview.nvim", run=fn["mkdp#util#install"]};
    "jakewvincent/mkdnflow.nvim";
    "JuliaEditorSupport/julia-vim";
    "neovim/nvim-lspconfig";
    "nvim-lua/completion-nvim";
    "ojroques/nvim-lspfuzzy";
    "windwp/nvim-autopairs";
    "numToStr/FTerm.nvim";
}

require("onenord").setup()
require("gitsigns").setup()
require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
}
require("nvim-treesitter.configs").setup({
    ensure_installed = {"julia", "python"},
    highlight = {enable = true},
    rainbow = {enable = true, extended_mode = true},
    autopairs = {enable = true}
})
require("nvim_comment").setup({
    line_mapping = ";;",
    operator_mapping = ";"
})
require("nvim-tree").setup()
require("lualine").setup({
    options = {theme = "onenord"}
})
require("lspfuzzy").setup({})
local npairs = require("nvim-autopairs")
npairs.setup({check_ts = true})
local ts_conds = require("nvim-autopairs.ts-conds")
require("mkdnflow").setup({create_dirs = true})
require("FTerm").setup({
    dimensions = {height = 0.6, width = 0.6}
})

require("bindings")
require("lsp")

g.diagnostic_auto_popup_while_jump = 0
g.diagnostic_enable_virtual_text = 0
g.diagnostic_enable_underline = 0
g.diagnostic_timer_cycle = 200

g.mkdp_auto_close = 0
g.mkdp_browser = "brave"
g.latex_to_unicode_auto = 1

opt.bs = "2"
opt.completeopt = {"menuone", "noinsert", "noselect"}
opt.cursorline = true
opt.display = "lastline"
opt.expandtab = true
opt.ignorecase = true
opt.linespace = 5
opt.list = true
opt.mouse = "a"
opt.number = true
opt.number = true
opt.pumheight = 20
opt.report = 0
opt.scrolloff = 4
opt.shiftround = true
opt.shiftwidth = 4
opt.showmatch = true
opt.showmode = true
opt.sidescrolloff = 8
opt.smartcase = true
opt.smartindent = true
opt.softtabstop = 4
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 4
opt.termguicolors = true
opt.timeoutlen = 500
opt.wildmode = {"list", "longest"}
opt.wrap = false

