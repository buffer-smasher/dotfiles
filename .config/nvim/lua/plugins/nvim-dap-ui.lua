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
end

return Plugin
