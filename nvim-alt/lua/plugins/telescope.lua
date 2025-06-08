return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { -- If encountering errors, see telescope-fzf-native README for installation instructions
        'nvim-telescope/telescope-fzf-native.nvim',

        -- `build` is used to run some command when the plugin is installed/updated.
        -- This is only run then, not every time Neovim starts up.
        build = 'make',

        -- `cond` is a condition used to determine whether this plugin should be
        -- installed and loaded.
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
    },
  },
  config = function()
    require('telescope').setup {
	defaults = {
	    -- `initial_mode' sets the initial Vim mode when for example in 'find files' screen (and others).
	    initial_mode = "normal"
	}
    }
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope [f]ind [f]iles' })
    vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind current [w]ord' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope [f]ile live [g]rep' })
    vim.keymap.set('n', '<leader><space>', builtin.buffers, { desc = '[ ] Find existing buffers' })

    pcall(require('telescope').load_extension, 'fzf')
  end,
}
