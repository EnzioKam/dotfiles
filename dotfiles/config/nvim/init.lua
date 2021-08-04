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
    "shaunsingh/nord.nvim";
    "nvim-treesitter/nvim-treesitter";
    "p00f/nvim-ts-rainbow";
    "terrortylor/nvim-comment";
    "mboughaba/i3config.vim";
    "ap/vim-css-color";
    "kyazdani42/nvim-web-devicons";
    "kyazdani42/nvim-tree.lua";
    "hoob3rt/lualine.nvim";
    {"iamcco/markdown-preview.nvim", run=fn["mkdp#util#install"]};
    "JuliaEditorSupport/julia-vim";
    "neovim/nvim-lspconfig";
    "nvim-lua/completion-nvim";
    "ojroques/nvim-lspfuzzy";
}
require("gitsigns").setup()
require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
}
require("nvim-treesitter.configs").setup({
    ensure_installed = "maintained",
    highlight = {enable = true},
    rainbow = {enable = true, extended_mode = true}
})
require("nvim_comment").setup({
    line_mapping = ";;",
    operator_mapping = ";"
})
require("lualine").setup({
    options = {theme = "nord"}
})
require("lspfuzzy").setup({
    methods = {
        "callHierachy/incomingCalls",
	    "callHierarchy/outgoingCalls",
	    "textDocument/codeAction",
	    "textDocument/definition",
	    "textDocument/documentSymbol",
	    "textDocument/implementation",
	    "textDocument/references",
	    "textDocument/typeDefinition",
	    "workspace/symbol"
    }
})
require("bindings")
require("lsp")

g.diagnostic_auto_popup_while_jump = 0
g.diagnostic_enable_virtual_text = 0
g.diagnostic_enable_underline = 0
g.diagnostic_timer_cycle = 200

g.colors_name = "nord"
g.mkdp_browser = 'brave'
g.latex_to_unicode_auto = 1

opt.completeopt = {"menuone", "noinsert", "noselect"}
cmd "syntax on"
cmd "filetype plugin indent on"
opt.timeoutlen = 500
opt.autoindent = true
opt.autoread = true
opt.backspace = {"indent", "eol", "start"}
opt.bs = "2"
opt.display = "lastline"
opt.hlsearch = true
opt.incsearch = true
opt.mouse = "a"
opt.smarttab = true
opt.softtabstop = 4
opt.showcmd = true
opt.showmode = true
opt.showmatch = true
opt.report = 0
opt.linespace = 5
opt.pumheight = 20
opt.number = true
opt.expandtab = true
opt.hidden = true
opt.ignorecase = true
opt.joinspaces = false
opt.list = true
opt.number = true
opt.scrolloff = 4
opt.shiftround = true
opt.shiftwidth = 4
opt.sidescrolloff = 8
opt.smartcase = true
opt.smartindent = true
opt.splitright = true
opt.splitbelow = true
opt.tabstop = 4
opt.termguicolors = true
opt.wildmode = {"list", "longest"}
opt.wrap = false

