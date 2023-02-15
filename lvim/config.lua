--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save.enabled = false
lvim.colorscheme = "lunar"
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )

--  Quit insert mode
vim.keymap.set("i", "hh", "<Esc>" )

-- wORD left/right
vim.keymap.set("n", "d", "b" )
vim.keymap.set("n", "n", "p" )

-- Up/down
vim.keymap.set("n", "t", "k" )
vim.keymap.set("n", "h", "j" )

vim.keymap.set("n", "<Down>", "15j" )
vim.keymap.set("n", "<Up>", "15k" )

vim.keymap.set("n", "D", "4b" )
vim.keymap.set("n", "N", "4w" )

-- cut
vim.keymap.set("n", "e", "d" )
vim.keymap.set("n", "E", "D" )
vim.keymap.set("n", "ee", "dd" )

-- replace
vim.keymap.set("n", "r", "c" )
vim.keymap.set("n", "=", "c" )
vim.keymap.set("n", "+", "C" )

-- inSert/Replace/append (T)
vim.keymap.set("n", "l", "i" )
vim.keymap.set("n", "L", "I" )

-- under
vim.keymap.set("n", "r", "o" )
vim.keymap.set("n", "R", "O" )

-- to
vim.keymap.set("n", "z", "t" )
vim.keymap.set("n", "Z", "T" )


-- Redo
vim.keymap.set("n", "U", "<C-r>" )


-- find and keep it centered
vim.keymap.set("n", "v", "nzzzv")
vim.keymap.set("n", "w", "Nzzzv")
vim.keymap.set("n", "V", "Nzzzv")
vim.keymap.set("n", ".", "/")
vim.keymap.set("n", ">", "?")
vim.keymap.set("n", "c", ".")
vim.keymap.set("n", "C", ">")
vim.keymap.set("nn", "s", "v")
vim.keymap.set("nn", "S", "V")
vim.keymap.set("nn", "oi", "gi")
vim.keymap.set("nn", "Y", "y$")


vim.keymap.set("n", "ep", "dip" )
vim.keymap.set("n", "=p", "cip" )
vim.keymap.set("n", "yp", "yip" )
vim.keymap.set("n", "sp", "vip" )


-- delete/change in word
vim.keymap.set("n", "es", "dw" )
vim.keymap.set("n", "en", "diw" )
vim.keymap.set("n", "=s", "cw" )
vim.keymap.set("n", "=n", "ciw" )
vim.keymap.set("n", "ean", "daw" )
vim.keymap.set("n", "=an", "caw" )
vim.keymap.set("n", "sn", "viw" )
vim.keymap.set("n", "yn", "yiw" )
vim.keymap.set("n", "san", "vaw" )
vim.keymap.set("n", "yan", "yaw" )

-- delete/change in () {} [] ''
vim.keymap.set("n", "eh", "di{" )
vim.keymap.set("n", "et", "dit" )
vim.keymap.set("n", "er", "di(" )
vim.keymap.set("n", "ed", "di[" )
vim.keymap.set("n", "el", "di'" )

vim.keymap.set("n", "=h", "ci{" )
vim.keymap.set("n", "=t", "cit" )
vim.keymap.set("n", "=r", "ci(" )
vim.keymap.set("n", "=d", "ci[" )
vim.keymap.set("n", "=l", "ci'" )

vim.keymap.set("n", "yh", "yi{" )
vim.keymap.set("n", "yt", "yit" )
vim.keymap.set("n", "yr", "yi(" )
vim.keymap.set("n", "yd", "yi[" )
vim.keymap.set("n", "yl", "yi'" )

vim.keymap.set("n", "sh", "vi{" )
vim.keymap.set("n", "st", "vit" )
vim.keymap.set("n", "sr", "vi(" )
vim.keymap.set("n", "sd", "vi[" )
vim.keymap.set("n", "sl", "si'" )

-- delete/change around () {} []
vim.keymap.set("n", "eah", "da{")
vim.keymap.set("n", "eat", "dat")
vim.keymap.set("n", "ear", "da(")
vim.keymap.set("n", "ead", "da[")
vim.keymap.set("n", "eal", "da'")

vim.keymap.set("n", "=ah", "ca{")
vim.keymap.set("n", "=at", "cat")
vim.keymap.set("n", "=ar", "ca(")
vim.keymap.set("n", "=ad", "ca[")
vim.keymap.set("n", "=al", "ca'")

vim.keymap.set("n", "yah", "ya{")
vim.keymap.set("n", "yat", "yat")
vim.keymap.set("n", "yar", "ya(")
vim.keymap.set("n", "yad", "ya[")
vim.keymap.set("n", "yal", "ya'")

vim.keymap.set("n", "sah", "va{")
vim.keymap.set("n", "sat", "vat")
vim.keymap.set("n", "sar", "va(")
vim.keymap.set("n", "sad", "va[")
vim.keymap.set("n", "sal", "va'")




-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Change theme settings
-- lvim.builtin.theme.options.dim_inactive = true
-- lvim.builtin.theme.options.style = "storm"

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- generic LSP settings

-- -- make sure server will always be installed even if the server is in skipped_servers list
-- lvim.lsp.installer.setup.ensure_installed = {
--     "sumneko_lua",
--     "jsonls",
-- }
-- -- change UI setting of `LspInstallInfo`
-- -- see <https://github.com/williamboman/nvim-lsp-installer#default-configuration>
-- lvim.lsp.installer.setup.ui.check_outdated_servers_on_open = false
-- lvim.lsp.installer.setup.ui.border = "rounded"
-- lvim.lsp.installer.setup.ui.keymaps = {
--     uninstall_server = "d",
--     toggle_server_expand = "o",
-- }

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = false

-- ---configure a server manually. !!Requires `:LvimCacheReset` to take effect!!
-- ---see the full default list `:lua print(vim.inspect(lvim.lsp.automatic_configuration.skipped_servers))`
-- vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "pyright" })
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pyright", opts)

-- ---remove a server from the skipped list, e.g. eslint, or emmet_ls. !!Requires `:LvimCacheReset` to take effect!!
-- ---`:LvimInfo` lists which server(s) are skipped for the current filetype
-- lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
--   return server ~= "emmet_ls"
-- end, lvim.lsp.automatic_configuration.skipped_servers)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   { command = "black", filetypes = { "python" } },
--   { command = "isort", filetypes = { "python" } },
--   {
--     -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "prettier",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--print-with", "100" },
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "typescript", "typescriptreact" },
--   },
-- }

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
-- lvim.plugins = {
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- vim.api.nvim_create_autocmd("BufEnter", {
--   pattern = { "*.json", "*.jsonc" },
--   -- enable wrap mode for json files only
--   command = "setlocal wrap",
-- })
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "zsh",
--   callback = function()
--     -- let treesitter use bash highlight for zsh files as well
--     require("nvim-treesitter.highlight").attach(0, "bash")
--   end,
-- })
