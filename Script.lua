-- Betty Hubz - Premium++ GUI completo
-- Hospede este arquivo no GitHub e use loadstring para carregar

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Cria ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BettyHubzPremium"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Container principal
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 420, 0, 350)
mainFrame.Position = UDim2.new(0.5, -210, 0.5, -175)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local uiStroke = Instance.new("UIStroke")
uiStroke.Thickness = 3
uiStroke.Color3 = Color3.fromRGB(0, 0, 0)
uiStroke.Parent = mainFrame

local uiCorner = Instance.new("UICorner")
uiCorner.CornerRadius = UDim.new(0, 14)
uiCorner.Parent = mainFrame

-- Título
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -24, 0, 36)
title.Position = UDim2.new(0, 12, 0, 12)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 20
title.TextColor3 = Color3.fromRGB(230, 230, 230)
title.Text = "Betty Hubz - Premium++"
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = mainFrame

-- Botão fechar
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 34, 0, 34)
closeBtn.Position = UDim2.new(1, -46, 0, 12)
closeBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
closeBtn.BorderSizePixel = 0
closeBtn.Font = Enum.Font.GothamBold
closeBtn.TextSize = 20
closeBtn.Text = "X"
closeBtn.TextColor3 = Color3.fromRGB(220, 220, 220)
closeBtn.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 8)
closeCorner.Parent = closeBtn

local closeStroke = Instance.new("UIStroke")
closeStroke.Thickness = 2
closeStroke.Color = Color3.fromRGB(0,0,0)
closeStroke.Parent = closeBtn

closeBtn.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Corpo
local body = Instance.new("Frame")
body.Size = UDim2.new(1, -24, 1, -72)
body.Position = UDim2.new(0, 12, 0, 52)
body.BackgroundTransparency = 1
body.Parent = mainFrame

-- Função de pulso branco
local function pulseButton(btn)
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextColor3 = Color3.fromRGB(0, 0, 0)
    task.wait(0.12)
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    btn.TextColor3 = Color3.fromRGB(230, 230, 230)
end

-- ===================== Instant Steal =====================
local stealBtn = Instance.new("TextButton")
stealBtn.Name = "InstantSteal"
stealBtn.Size = UDim2.new(0, 160, 0, 40)
stealBtn.Position = UDim2.new(0.5, -80, 0, 20)
stealBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
stealBtn.BorderSizePixel = 0
stealBtn.Font = Enum.Font.GothamBold
stealBtn.TextSize = 18
stealBtn.Text = "Instant Steal"
stealBtn.TextColor3 = Color3.fromRGB(230, 230, 230)
stealBtn.Parent = body

local stealCorner = Instance.new("UICorner")
stealCorner.CornerRadius = UDim.new(0, 10)
stealCorner.Parent = stealBtn

local stealStroke = Instance.new("UIStroke")
stealStroke.Thickness = 2
stealStroke.Color = Color3.fromRGB(0, 0, 0)
stealStroke.Parent = stealBtn

stealBtn.MouseButton1Click:Connect(function()
    pulseButton(stealBtn)
    local overlayGui = Instance.new("ScreenGui")
    overlayGui.Name = "StealOverlay"
    overlayGui.ResetOnSpawn = false
    overlayGui.Parent = playerGui
    local overlay = Instance.new("Frame")
    overlay.Size = UDim2.new(1,0,1,0)
    overlay.BackgroundColor3 = Color3.fromRGB(0,0,0)
    overlay.BorderSizePixel = 0
    overlay.Parent = overlayGui
    local message = Instance.new("TextLabel")
    message.Size = UDim2.new(0.8,0,0,60)
    message.Position = UDim2.new(0.5,0,0.5,0)
    message.AnchorPoint = Vector2.new(0.5,0.5)
    message.BackgroundTransparency = 1
    message.Font = Enum.Font.GothamBold
    message.TextSize = 20
    message.TextColor3 = Color3.fromRGB(255,255,255)
    message.Text = "Stealing the brainrot, please be patient"
    message.TextWrapped = true
    message.Parent = overlay
    task.delay(5,function()
        if player and player.Parent then
            pcall(function()
                player:Kick("You have been banned for exploiting")
            end)
        end
    end)
end)

-- ===================== Noclip =====================
local noclipBtn = Instance.new("TextButton")
noclipBtn.Name = "Noclip"
noclipBtn.Size = UDim2.new(0,160,0,40)
noclipBtn.Position = UDim2.new(0.5,-80,0,70)
noclipBtn.BackgroundColor3 = Color3.fromRGB(50,50,50)
noclipBtn.BorderSizePixel = 0
noclipBtn.Font = Enum.Font.GothamBold
noclipBtn.TextSize = 18
noclipBtn.Text = "Noclip"
noclipBtn.TextColor3 = Color3.fromRGB(230,230,230)
noclipBtn.Parent = body

local noclipCorner = Instance.new("UICorner")
noclipCorner.CornerRadius = UDim.new(0,10)
noclipCorner.Parent = noclipBtn

local noclipStroke = Instance.new("UIStroke")
noclipStroke.Thickness = 2
noclipStroke.Color = Color3.fromRGB(0,0,0)
noclipStroke.Parent = noclipBtn

noclipBtn.MouseButton1Click:Connect(function()
    pulseButton(noclipBtn)
end)

-- ===================== ESP =====================
local espEnabled = false
local espLines = {}
local espNames = {}

local function createESP(character, plr)
    local hrp = character:FindFirstChild("HumanoidRootPart")
    local head = character:FindFirstChild("Head")
    if not hrp or not head then return end
    if not hrp:FindFirstChild("BettyESP") then
        local box = Instance.new("BoxHandleAdornment")
        box.Name = "BettyESP"
        box.Adornee = hrp
        box.AlwaysOnTop = true
        box.ZIndex = 10
        box.Size = Vector3.new(6,8,6)
        box.Transparency = 0.7
        box.Color3 = Color3.fromRGB(0,255,0)
        box.Parent = hrp
    end
    if not espLines[plr] then
        local line = Drawing.new("Line")
        line.Visible = true
        line.Color = Color3.fromRGB(255,255,255)
        line.Thickness = 2
        espLines[plr] = {line=line, hrp=hrp}
    end
    if not espNames[plr] then
        local text = Drawing.new("Text")
        text.Visible = true
        text.Color = Color3.fromRGB(255,255,255)
        text.Size = 16
        text.Center = true
        text.Outline = true
        text.Text = plr.Name
        espNames[plr] = {text=text, head=head}
    end
end

local function removeESP(character, plr)
    if character then
        local hrp = character:FindFirstChild("HumanoidRootPart")
        if hrp then
            local box = hrp:FindFirstChild("BettyESP")
            if box then box:Destroy() end
        end
    end
    if espLines[plr] then
        espLines[plr].line:Remove()
        espLines[plr] = nil
    end
    if espNames[plr] then
        espNames[plr].text:Remove()
        espNames[plr] = nil
    end
end

RunService.RenderStepped:Connect(function()
    if not espEnabled then return end
    local cam = workspace.CurrentCamera
    for plr, data in pairs(espLines) do
        local line = data.line
        local hrp = data.hrp
        if plr and plr.Character and hrp and hrp.Parent then
            local rootPos,onScreen = cam:WorldToViewportPoint(hrp.Position)
            if onScreen then
                line.From = Vector2.new(cam.ViewportSize.X/2, cam.ViewportSize.Y)
                line.To = Vector2.new(rootPos.X, rootPos.Y)
                line.Visible = true
            else line.Visible=false end
        else line.Visible=false end
    end
    for plr,data in pairs(espNames) do
        local text = data.text
        local head = data.head
        if plr and plr.Character and head and head.Parent then
            local headPos,onScreen = cam:WorldToViewportPoint(head.Position+Vector3.new(0,2.5,0))
            if onScreen then
                text.Position = Vector2.new(headPos.X, headPos.Y)
                text.Visible = true
            else text.Visible=false end
        else text.Visible=false end
    end
end)

local espBtn = Instance.new("TextButton")
espBtn.Name="ESP"
espBtn.Size=UDim2.new(0,160,0,40)
espBtn.Position=UDim2.new(0.5,-80,0,120)
espBtn.BackgroundColor3=Color3.fromRGB(50,50,50)
espBtn.BorderSizePixel=0
espBtn.Font=Enum.Font.GothamBold
espBtn.TextSize=18
espBtn.Text="ESP (OFF)"
espBtn.TextColor3=Color3.fromRGB(230,230,230)
espBtn.Parent=body

local espCorner=Instance.new("UICorner")
espCorner.CornerRadius=UDim.new(0,10)
espCorner.Parent=espBtn

local espStroke=Instance.new("UIStroke")
espStroke.Thickness=2
espStroke.Color=Color3.fromRGB(0,0,0)
espStroke.Parent=espBtn

espBtn.MouseButton1Click:Connect(function()
    pulseButton(espBtn)
    espEnabled = not espEnabled
    if espEnabled then espBtn.Text="ESP (ON)" else espBtn.Text="ESP (OFF)" end
end)

-- ===================== Part =====================
local partBtn =
