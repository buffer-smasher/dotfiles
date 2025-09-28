local Plugin = { "rcarriga/nvim-dap-ui" }

Plugin.event = { "VeryLazy" }

Plugin.dependencies = { "mfussenegger/nvim-dap" }

function Plugin.config()
	local dap = require("dap")
	local dapui = require("dapui")
	dapui.setup()
	dap.listeners.after.event_initialized["dapui_config"] = function()
		dapui.open()
	end
	dap.listeners.before.event_terminated["dapui_config"] = function()
		dapui.close()
	end
	dap.listeners.before.event_exited["dapui_config"] = function()
		dapui.close()
	end
	dap.configurations.cpp = {
		{
			name = "Launch C++ with args",
			type = "cppdbg",
			request = "launch",
			program = function()
				return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/a.out", "file")
			end,
			args = function()
				local input = vim.fn.input("Program arguments: ")
				return vim.split(input, " ", { trimempty = true })
			end,
			cwd = "${workspaceFolder}",
			runInTerminal = true,
			MIMode = "gdb",
			miDebuggerPath = "/usr/bin/gdb",
			stopAtEntry = false,
			setupCommands = {
				{
					text = "-enable-pretty-printing",
					description = "enable pretty printing",
					ignoreFailures = false,
				},
				{
					text = '-interpreter-exec console "handle SIGABRT stop print pass"',
					description = "stop on SIGABRT",
				},
				{
					text = '-interpreter-exec console "handle SIGSEGV stop print pass"',
					description = "stop on SIGSEGV",
				},
			},
		},
	}

	local mason_registry = require("mason-registry")

	-- Ensure it's installed
	if not mason_registry.has_package("cpptools") then
		print("cpptools is not installed")
		return
	end

	local cpptools = mason_registry.get_package("cpptools")
	local install_path = cpptools:get_install_path()
	local dbg_path = install_path .. "/extension/debugAdapters/bin/OpenDebugAD7"

	dap.adapters.cppdbg = {
		id = "cppdbg",
		type = "executable",
		command = dbg_path,
		options = {
			detached = false,
		},
	}
end

return Plugin
