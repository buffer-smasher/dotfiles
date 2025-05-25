local Plugin = { "barrett-ruth/live-server.nvim" }

Plugin.lazy = false

Plugin.cmd = { "LiveServerStart", "LiveServerStop" }

Plugin.config = true

Plugin.build = "pnpm add -g live-server"

return Plugin
