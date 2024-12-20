return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"leoluz/nvim-dap-go",
		"nvim-neotest/nvim-nio",
		"mfussenegger/nvim-dap-python",
	},
	config = function()
		local dap = require("dap")
		vim.keymap.set("n", "<Leader>dt", function()
			dap.toggle_breakpoint()
		end)
		vim.keymap.set("n", "<leader>dc", function()
			dap.continue()
		end)
		vim.keymap.set("n", "<leader>dq", "<Cmd>lua require('dap').terminate()<CR>")

		dap.configurations.go = {
			{
				type = "go",
				name = "Attach to port",
				mode = "remote",
				request = "attach",
				host = "127.0.0.1",
				port = function()
					local input = vim.fn.input("Enter the port number for delve:")
					local port = tonumber(input)
					if port then
						return port
					else
						print("Invalid port number. Using 12345 instead")
						return
					end
				end,
			},
		}

		require("dap-go").setup()
		local findDebugPath = function()
			local venvPath = os.getenv("HOME") .. "/.virtualenvs/debugpy/bin/python"
			local ok, err, code = os.rename(venvPath, venvPath)
			if not ok then
				if code == 13 then
					-- Permission denied, but exists
					return venvPath
				end
				print(err)
				return "python"
			end
			return venvPath
		end
		local debugPath = findDebugPath()
		require("dap-python").setup(debugPath)

		-- DAP UI config
		local dapui = require("dapui")
		dapui.setup()
		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}
