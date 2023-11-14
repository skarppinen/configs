vim.keymap.set('n', '<leader>ev', "<cmd>vsplit $MYVIMRC<cr>", {desc = "[E]dit [V]imrc (or init.lua)",
      noremap = true})

vim.keymap.set('n', "<leader>'", "ciw'<c-r>\"'",
    {desc = "Surround word with single quotes",
     noremap = true})

vim.keymap.set('n', "<leader>\"", "ciw\"<c-r>\"\"",
    {desc = "Surround word with double quotes",
     noremap = true})

do
    local function toggler()
	vim.o.relativenumber = not vim.o.relativenumber
    end
    vim.keymap.set('n', "<leader>tn", toggler,
	{desc = "[T]oggle between [n]umbers and relative numbers",
	 noremap = true})
end

