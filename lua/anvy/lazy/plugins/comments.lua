return {
	{
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
config = function() require('Comment').setup() end,
},
	{
	"JoosepAlviste/nvim-ts-context-commentstring",
	opts = function()
		return { pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook() }
	end,
	},
}
