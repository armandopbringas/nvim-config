return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<C-LeftMouse>", "<cmd>Telescope lsp_definitions<CR>", desc = "Go to Definition (Telescope)" },
  },
}
