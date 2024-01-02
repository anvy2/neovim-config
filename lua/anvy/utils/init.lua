local U = {}

function U.notify(msg, type, opts)
	vim.schedule(function() vim.notify(msg, type, opts) end)
end

return U
