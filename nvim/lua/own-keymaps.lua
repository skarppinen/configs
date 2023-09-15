vim.keymap.set('n', '<leader>ev', "<cmd>vsplit $MYVIMRC<cr>", {desc = "[E]dit [V]imrc (or init.lua)",
      noremap = true})

vim.keymap.set('n', "<leader>'", "ciw'<c-r>\"'",
    {desc = "Surround word with single quotes",
     noremap = true})
