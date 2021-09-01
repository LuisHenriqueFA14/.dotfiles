local g = vim.g

g.dashboard_custom_section = {
	a = { description = { "洛 New File                  SPC f n" }, command = "DashboardNewFile" },
	b = { description = { "  Recents                   SPC f o" }, command = "Telescope oldfiles" },
	c = { description = { "  Find File                 SPC f f" }, command = "Telescope find_files" },
	d = { description = { "  Find Word                 SPC f w" }, command = "Telescope live_grep" },
	e = { description = { "  Bookmarks                 SPC b m" }, command = "Telescope marks" },
	f = { description = { "  Load Last Session         SPC s l" }, command = "SessionLoad" },
}
