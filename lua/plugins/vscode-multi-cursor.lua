return {
  {
    'vscode-neovim/vscode-multi-cursor.nvim',
    event = 'VeryLazy',
    cond = not not vim.g.vscode,
    opts = { -- Config is optional
      -- Whether to set default mappings
      default_mappings = true,
      -- If set to true, only multiple cursors will be created without multiple selections
      no_selection = false
    },
    init = function()
      vim.keymap.set('n', '<c-j>', 'mciw*<Cmd>nohl<CR>', { remap = true })
    end,
  }
}
