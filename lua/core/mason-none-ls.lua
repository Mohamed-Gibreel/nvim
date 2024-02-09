local M = {
  "jay-babu/mason-null-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "williamboman/mason.nvim",
    "nvimtools/none-ls.nvim",
  },
}

function M.config()
  require("core.none-ls")
  require("mason-null-ls").setup({
    ensure_installed = { "prettier", "stylua", "black", "pyright", "flake8" }
  })
end

return M;
