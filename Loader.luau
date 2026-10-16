local SharedEnvironment = (type(getgenv) == "function" and getgenv()) or _G
if SharedEnvironment.Abysall then
    return
end
SharedEnvironment.Abysall = { Legit = true }

local GameList = {
  [2440500124] = "Doors"
}

local BaseUrl = "https://raw.githubusercontent.com/SEU_USUARIO/Abysall-Updated/refs/heads/main/"

local function LoadRemoteModule(Path)
    local Success, Source = pcall(function()
        return game:HttpGet(BaseUrl .. Path)
    end)
    if not Success or type(Source) ~= "string" then
        error("Abysall could not download module: " .. Path .. " (" .. tostring(Source) .. ")")
    end
    if type(loadstring) ~= "function" then
        error("This environment does not expose loadstring; Abysall cannot load remote modules.")
    end
    local Chunk, CompileError = loadstring(Source)
    if type(Chunk) ~= "function" then
        error("Abysall could not compile module " .. Path .. ": " .. tostring(CompileError))
    end
    local ModuleSuccess, Module = pcall(Chunk)
    if not ModuleSuccess then
        error("Abysall module failed: " .. Path .. " (" .. tostring(Module) .. ")")
    end
    return Module
end

SharedEnvironment.Abysall = {
    Environment = LoadRemoteModule("Components/Environment.luau"),
    ESPLibrary = LoadRemoteModule("Components/ESP.luau"),
    Legit = true,
}

local function CloneReference(Object)
    if Abysall and Abysall.Environment.cloneref then
        return Abysall.Environment.cloneref(Object)
    else
        return Object
    end
end

local Services = setmetatable({}, {
    __index = function(self, Name)
        return CloneReference(game:GetService(Name))
    end
})

if Abysall.Environment.writefile and Abysall.Environment.readfile then
    if not Abysall.Environment.isfile("Abysall/UserData.json") then
        local Data = {
            TotalExecutions = 0,
            UILibrary = "Obsidian"
        }
        Abysall.Environment.writefile("Abysall/UserData.json", Services.HttpService:JSONEncode(Data))
    end

    local UserData = Abysall.Environment.readfile("Abysall/UserData.json")
    local Decoded = Services.HttpService:JSONDecode(UserData)
    if not Decoded.TotalExecutions then
        Decoded.TotalExecutions = 0    
    end

    Decoded.TotalExecutions = Decoded.TotalExecutions + 1

    if not Decoded.UILibrary then
        Decoded.UILibrary = "Obsidian"
    end

    Abysall.TotalExecutions = Decoded.TotalExecutions
    Abysall.UILibrary = Decoded.UILibrary

    Abysall.Environment.writefile("Abysall/UserData.json", Services.HttpService:JSONEncode(Decoded))
end

Abysall.Localization = LoadRemoteModule("Components/Localization.luau")
Abysall.Interface = LoadRemoteModule("Components/Interface.luau")
Abysall.Analytics = LoadRemoteModule("Components/Analytics.luau")

local CurrentGame = GameList[game.GameId]
if CurrentGame then
    LoadRemoteModule("Games/" .. CurrentGame .. "/Loader.luau")
else
    LoadRemoteModule("Games/Universal/Loader.luau")
end
