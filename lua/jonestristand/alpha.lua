local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
--	[[                               __                ]],
--	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
--	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
--	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
--	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
--	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
		[[_______________________/\\\_____________________________________________________        ]],
		[[ ______________________\/\\\________/\\\_________________________________________       ]],
		[[  _____/\\\_____________\/\\\_______\///_________________/\\\_____________________      ]],
		[[   __/\\\\\\\\\\\________\/\\\________/\\\__/\\\____/\\\_\///_____/\\\\\__/\\\\\___     ]],
		[[    _\////\\\////____/\\\\\\\\\_______\/\\\_\//\\\__/\\\___/\\\__/\\\///\\\\\///\\\_    ]],
		[[     ____\/\\\_______/\\\////\\\_______\/\\\__\//\\\/\\\___\/\\\_\/\\\_\//\\\__\/\\\_   ]],
		[[      ____\/\\\_/\\__\/\\\__\/\\\___/\\_\/\\\___\//\\\\\____\/\\\_\/\\\__\/\\\__\/\\\_  ]],
		[[       ____\//\\\\\___\//\\\\\\\/\\_\//\\\\\\_____\//\\\_____\/\\\_\/\\\__\/\\\__\/\\\_ ]],
		[[        _____\/////_____\///////\//___\//////_______\///______\///__\///___\///___\///__]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "Tristan Jones"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
