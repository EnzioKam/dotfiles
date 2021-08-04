-- vim.api.nvim_exec(
--     [[autocmd BufEnter * lua require'completion'.on_attach()]],
--     false)
local nvim_lsp = require("lspconfig")
local on_attach_vim = function()
    require("completion").on_attach()
end
nvim_lsp.pyright.setup({on_attach=on_attach_vim})
nvim_lsp.julials.setup({
    server_path="/home/enzio/.julia/packages/LanguageServer/JrIEf/src/LanguageServer.jl",
    on_attach=on_attach_vim
})

