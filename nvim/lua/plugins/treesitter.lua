return {
	{
		"nvim-treesitter/nvim-treesitter",
		tag = "v0.9.1",
		opts = {
			ensure_installed = {
				"javascript",
				"typescript",
				"tsx",
				"css",
				"gitignore",
				"graphql",
				"astro",
				"php",
				"http",
				"json",
				"scss",
				"sql",
				"vim",
				"lua",
			},
			query_linter = {
				enable = true,
				use_virtual_text = true,
				lint_events = { "BufWrite", "CursorHold" },
			},
		},
	},
}
