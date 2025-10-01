-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Abrir el panel de bases de datos
vim.keymap.set("n", "<leader>du", ":DBUI<CR>", { desc = "Abrir DBUI" })

-- Abrir resultados en un buffer flotante
vim.g.db_ui_win_position = "right"
vim.g.db_ui_winwidth = 40
vim.g.db_ui_show_help = 0

-- Guardar conexiones en este archivo
vim.g.db_ui_save_location = "~/.config/nvim/db_ui"
