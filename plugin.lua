-- Sleep implementation from https://stackoverflow.com/a/17987723
local socket = require("socket")

local function sleep(sec)
	socket.select(nil, nil, sec)
end

return {
	name = "echo",
	summary = "Echoed the output",
	actions = {
		echo = {
			plan = function()
				-- Perform any setup before exec is called here
				-- plan is not necessary if you don't need any setup
			end,
			exec = function(output, wait)
				if wait then
					sleep(wait)
				end

				print(tostring(output.output))
			end,
		},
	},
}
