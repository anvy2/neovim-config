-- path/to/file:line:col: code message
local pattern = "[^:]+:(%d+):(%d+): (.*)"
local groups = { "lnum", "col", "message" }

return {
	cmd = "staticcheck",
	stdin = false,
	append_fname = true,
	args = { "-checks", '"all"' },
	ignore_exitcode = true,
	parser = require("lint.parser").from_pattern(pattern, groups, nil, {
		["source"] = "staticcheck",
	}),
}
