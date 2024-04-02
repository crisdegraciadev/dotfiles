return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				auto_install = true,
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"eslint",
					"html",
					"cssls",
					"emmet_ls",
				},
			})
		end,
	},
	{
		"antosha417/nvim-lsp-file-operations",
		config = true,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			local function organize_ts_imports()
				local params = {
					command = "_typescript.organizeImports",
					arguments = { vim.api.nvim_buf_get_name(0) },
					title = "",
				}
				vim.lsp.buf.execute_command(params)
			end

			lspconfig.tsserver.setup({
				capabilities = capabilities,
				commands = {
					OrganizeImports = {
						organize_ts_imports,
						description = "Organize Imports",
					},
				},
			})

			lspconfig.eslint.setup({
				capabilities = capabilities,
			})

			lspconfig.html.setup({
				capabilities = capabilities,
			})

			lspconfig.cssls.setup({
				capabilities = capabilities,
			})

			-- lspconfig.emmet_ls.setup({
			--   capabilities = capabilities,
			--   filetypes = { "html", "css", "sass" },
			-- })

			lspconfig.angularls.setup({
				capabilities = capabilities,
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>ru", "<cmd>OrganizeImports<CR>", {})
			vim.keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", {})
			vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", {})
		end,
	},
}
