local name    = 'hunger'
local default = 1000000
local color   = '#CFAD0F'

TriggerEvent('esx_status:registerStatus', name, default, color, 
	function(status) -- Visible calllback, if it return true the status will be visible
		return true
	end,
	function(status) -- Tick callback, what to do at each tick
		status.remove(200)
	end,
	{remove = 200} -- Client action (add / remove) so the client can be in sync with server
)

local name	  = 'thirst'
local default = 1000000
local color   = '#0C98F1'

TriggerEvent('esx_status:registerStatus', name, default, color, 
	function(status) -- Visible calllback, if it return true the status will be visible
		return true
	end,
	function(status) -- Tick callback, what to do at each tick
		status.remove(150)
	end,
	{remove = 150} -- Client action (add / remove) so the client can be in sync with server
)