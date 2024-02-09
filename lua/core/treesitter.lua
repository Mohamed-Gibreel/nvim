local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  build = ":TSUpdate",
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ignore_install = {},
    auto_install = true,
    sync_install = false,
    modules = {},
    ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "bash", "javascript", "typescript", "tsx" },
    highlight = { enable = true },
    indent = { enable = true },
  }
end

return M
