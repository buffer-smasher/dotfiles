local Plugin = { "folke/tokyonight.nvim" }

function Plugin.init()
	vim.cmd.colorscheme("tokyonight-night")

	-- You can configure highlights by doing something like:
	vim.cmd.hi("Comment gui=none")
end

return Plugin
