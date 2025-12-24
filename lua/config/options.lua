-- =========================================================
-- ⚙️  Opciones generales de Neovim
-- =========================================================

vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true

-- Folds: seguros (Treesitter los maneja después)
vim.opt.foldmethod = "manual"
vim.opt.foldenable = false

-- Espaciado vertical (ajustado para macOS + Nerd Font)
vim.opt.linespace = 2

-- =========================================================
-- 💾 Autosave controlado (NO agresivo)
-- =========================================================

vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    if vim.bo.modified and vim.bo.buftype == "" then
      vim.cmd("silent write")
    end
  end,
})

-- =========================================================
-- ⌨️  Mapeos en terminal (tmux-like navigation)
-- =========================================================

vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], { silent = true })
vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], { silent = true })
vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], { silent = true })
vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], { silent = true })

-- =========================================================
-- 🗃️  Dadbod: salida dbout como CSV
-- =========================================================

vim.api.nvim_create_autocmd("FileType", {
  pattern = "dbout",
  callback = function()
    vim.bo.filetype = "csv"
  end,
})