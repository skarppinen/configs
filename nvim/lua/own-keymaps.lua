vim.keymap.set('n', '<leader>ev', "<cmd>tabe $MYVIMRC<cr>", {desc = "[E]dit [V]imrc (or init.lua) in a tab",
      noremap = true})

vim.keymap.set('n', "<leader>'",
    function()
	-- Get current column.
	local col = vim.fn.col('.')

	-- Execute needed here because otherwise <c-r> and <Esc> will by understood literally.
	-- (by normal!). [[ and ]] are a way to do string literals in Lua.
	vim.cmd([[execute "normal! ciw'\<c-r>\"'\<Esc>"]])

	-- Set to old column position on current current line.
	vim.fn.cursor(vim.fn.line('.'), col + 1)
    end,
    {desc = "Surround word with single quotes, preserving position and remaining in normal mode", noremap = true}
)

vim.keymap.set('n', '<leader>"',
    function()
	-- Get current column.
	local col = vim.fn.col('.')

	-- Execute needed here because otherwise <c-r> and <Esc> will by understood literally.
	-- (by normal!). [[ and ]] are a way to do string literals in Lua.
	vim.cmd([[execute "normal! ciw\"\<c-r>\"\"\<Esc>"]])

	-- Set to old column position on current current line.
	vim.fn.cursor(vim.fn.line('.'), col + 1)
    end,
    {desc = "Surround word with single quotes, preserving position and remaining in normal mode", noremap = true}
)

-- vim.keymap.set('n', "<leader>\"", "ciw\"<c-r>\"\"<Esc>F\"",
--     {desc = "Surround word with double quotes",
--      noremap = true})

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

-- Command that strips all trailing whitespace from lines in a file.
vim.api.nvim_create_user_command('StripTrailingWs', function()
    vim.cmd('%s/\\s\\+$//g')
end, {})

