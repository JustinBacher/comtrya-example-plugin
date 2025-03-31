---@class Plugin
return {
	name = "echo",
	summary = "Echoed the output",
	actions = {
		echo = {
			plan = function()
				-- Perform any setup before exec is called here
				-- plan is not necessary if you don't need any setup
				local setup_failed = nil

				if setup_failed then
					return Error("Setup failed")
				end
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
