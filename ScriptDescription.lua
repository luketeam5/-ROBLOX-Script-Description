-- I understand this code is terrible but i was in hurry making this maybe i will update and fix it one day


local PlayerId = plugin:GetStudioUserId() -- Gets ID of user in studio
local studioname = game.Players:GetNameFromUserIdAsync(PlayerId) -- Gets player name from ID
local timestamp = os.time() -- Stores timestamp
local format = "%d.%m. %Y  %H:%M" -- Makes format for date creation (%d day / %m month / %Y year / %H hour / %M minute)
local dateDay = os.date(format, timestamp) -- Created date from timestamp and format
local toolbar = plugin:CreateToolbar("Script Description") -- Creates toolbar for buttons
local server = toolbar:CreateButton("Server script", "Create server script", "rbxassetid://4458901886") -- Makes buttons
local locals = toolbar:CreateButton("Local script", "Create local script", "rbxassetid://5939819076") -- TODO: Upload high quality version of Local Script icon
local module = toolbar:CreateButton("Module script", "Create module script", "rbxassetid://5939818869") -- TODO: Upload high quality version of Module Script icon

local function onButton1Clicked() 
	local newScript = Instance.new("Script") -- Creates script
	newScript.Parent = game:GetService("Workspace") -- Sets script parent
	-- "\" at end of lines adds new line to script. It works just format colors are broken..
	newScript.Source = "--[[ ---------- Info ---------- \
	WRITER(S): " .. studioname .. "  \
	Creation date: " .. dateDay .. "\
	Last edit: " .. dateDay .. "\
	Decription:  \
--]] ---------- Info ----------"
end
server.Click:Connect(onButton1Clicked) -- Calls function

local function onButton2Clicked()
	local newScript = Instance.new("LocalScript")
	newScript.Parent = game:GetService("Workspace")
	newScript.Source = "--[[ ---------- Info ---------- \
	WRITER(S): " .. studioname .. "  \
	Creation date: " .. dateDay .. "\
	Last edit: " .. dateDay .. "\
	Decription:  \
--]] ---------- Info ----------"
end
locals.Click:Connect(onButton2Clicked)

local function onButton3Clicked()
	local newScript = Instance.new("ModuleScript")
	newScript.Parent = game:GetService("Workspace")
	newScript.Source = "--[[ ---------- Info ---------- \
	WRITER(S): " .. studioname .. "  \
	Creation date: " .. dateDay .. "\
	Last edit: " .. dateDay .. "\
	Decription:  \
--]] ---------- Info ----------"
end
module.Click:Connect(onButton3Clicked)