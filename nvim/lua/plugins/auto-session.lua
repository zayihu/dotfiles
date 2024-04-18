return {
	"rmagatti/auto-session",
	event = "VeryLazy",
	config = function()
		require("auto-session").setup({
			log_level = "error",
			auto_session_suppress_dirs = { "~/", "/" },
			auto_session_use_git_branch = false,
			auto_session_enable_last_session = false,
		})
	end,
}
