vim.keymap.set('n', '<leader>ev', "<cmd>edit $MYVIMRC<cr>", {desc = "[E]dit [V]imrc (or init.lua)",
      noremap = true})

vim.keymap.set('n', '<leader>x', "<cmd>Ex<cr>", {desc = "Run command E[x] (netrw)", noremap = true})

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


do
    local function toggler()
	vim.o.relativenumber = not vim.o.relativenumber
    end
    vim.keymap.set('n', "<leader>tn", toggler,
	{desc = "[T]oggle between [n]umbers and relative numbers",
	 noremap = true})
end

-- Command that strips all trailing whitespace from lines in a file.
vim.api.nvim_create_user_command('StripTrailingWs', function()
    vim.cmd('%s/\\s\\+$//g')
end, {})

-- Make Ctrl + U / D work such that the moved to line is always at the center of the
-- screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
