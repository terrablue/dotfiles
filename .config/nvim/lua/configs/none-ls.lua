local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local opts = {
  sources = {
--   null_ls.builtins.formatting.prettier,
    require("none-ls.diagnostics.eslint")
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end
      })
    end
  end
}

return opts
