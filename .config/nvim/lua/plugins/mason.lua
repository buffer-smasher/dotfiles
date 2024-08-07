local Plugin = { "williamboman/mason.nvim" }

Plugin.lazy = false

Plugin.dependencies = {
	{ "mfussenegger/nvim-dap" },
	{ "jay-babu/mason-nvim-dap.nvim" },
	{ "nvim-neotest/nvim-nio" },
	{ "rcarriga/nvim-dap-ui" },
}

-- See :help mason-settings
Plugin.opts = {
	ui = { border = "rounded" },
}

function Plugin.config()
	require("mason").setup()
	require("mason-nvim-dap").setup({
		automatic_setup = true,
		handlers = { -- Instead of configurations
			function(config)
				-- all sources with no handler get passed here

				-- Keep original functionality
				require("mason-nvim-dap").default_setup(config)
			end,
		},
	})

	vim.keymap.set("n", "<F1>", ":lua require('dap').step_over()<CR>")
	vim.keymap.set("n", "<F2>", ":lua require('dap').step_into()<CR>")
	vim.keymap.set("n", "<F3>", ":lua require('dap').step_out()<CR>")
	vim.keymap.set("n", "<F4>", ":lua require('dapui').toggle()<CR>")
	vim.keymap.set("n", "<F5>", ":lua require('dap').continue()<CR>")
	vim.keymap.set("n", "<F9>", ":lua require('dap').toggle_breakpoint()<CR>")
end

return Plugin
