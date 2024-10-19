vim.keymap.set('n', '<leader>ev', "<cmd>tabe $MYVIMRC<cr>", {desc = "[E]dit [V]imrc (or init.lua) in a tab",
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

vim.keymap.set('t', "<Esc>", "<C-\\><C-n>",
	{desc = "Use Esc to enter normal mode from terminal mode",
	 noremap = true})

