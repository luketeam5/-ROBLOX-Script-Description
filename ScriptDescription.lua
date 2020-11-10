local PlayerId = plugin:GetStudioUserId()
local studioname = game.Players:GetNameFromUserIdAsync(PlayerId)
local timestamp = os.time()
local format = "%d.%m. %Y  %H:%M"
local dateDay = os.date(format, timestamp)
local toolbar = plugin:CreateToolbar("Script Description")
local server = toolbar:CreateButton("Server script", "Create server script", "rbxassetid://4458901886")
local locals = toolbar:CreateButton("Local script", "Create local script", "rbxassetid://5939819076")
local module = toolbar:CreateButton("Module script", "Create module script", "rbxassetid://5939818869")

local function onButton1Clicked()
	local newScript = Instance.new("Script")
	newScript.Parent = game:GetService("Workspace")
	newScript.Source = "--[[ ---------- Info ---------- \
	WRITER(S): " .. studioname .. "  \
	Creation date: " .. dateDay .. "\
	Last edit: " .. dateDay .. "\
	Decription:  \
--]] ---------- Info ----------"
end
server.Click:Connect(onButton1Clicked)

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