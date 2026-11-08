return {
	"nvim-neorg/neorg",
	ft = "norg",
	cmd = "Neorg",
	dependencies = { "luarocks.nvim" },
	version = "*",
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/notes",
						},
						default_workspace = "notes",
					},
				},
			},
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = "norg",
			callback = function()
				vim.wo.foldlevel = 99
				vim.wo.conceallevel = 2
			end,
		})
	end,
}
