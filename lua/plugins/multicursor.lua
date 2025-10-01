return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    config = function()
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>",
        ["Find Subword Under"] = "<C-n>",
        ["Select All"] = "<C-A-n>",
        ["Add Cursor Up"] = "<C-Up>",
        ["Add Cursor Down"] = "<C-Down>",
      }
      vim.cmd("hi VM_Extend guibg=#63b29c guifg=#ffffff")
      vim.cmd("hi VM_Cursor guibg=#f1a26e guifg=#000000")
    end,
  },
}
