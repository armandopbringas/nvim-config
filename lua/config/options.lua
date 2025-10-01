-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Add any additional options here
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Options are automatically loaded before lazy.nvim startup
vim.opt.relativenumber = false
vim.wo.signcolumn = "no"

-- archivo options.lua
local options = {
  -- Ajusta el espaciado entre líneas aquí
  linespace = 8,
  -- Otras opciones de Neovim...
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

-- Función para autosave
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*",
  callback = function()
    if vim.bo.modified then
      vim.cmd("silent! write")
    end
  end,
})

vim.api.nvim_set_keymap("t", "<C-k>", [[<C-\><C-n><C-w>k]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-j>", [[<C-\><C-n><C-w>j]], { noremap = true, silent = true })

vim.api.nvim_create_autocmd("FileType", {
  pattern = "dbout", -- buffers de salida de dadbod
  callback = function()
    -- reinterpreta el buffer como CSV para usar highlight
    vim.bo.filetype = "csv"
  end,
})

vim.g.dbs = {
  mysql_root = "mysql://root:chandelier91@127.0.0.1:3306",
  autos_mx = "mysql://root:chandelier91@127.0.0.1:3306/automotive_sales_analysis_mx?local_infile=1",
}
