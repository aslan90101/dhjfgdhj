local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Создаем GUI элементы
local screenGui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local superPowerButton = Instance.new("TextButton")

-- Настройка Frame
frame.Size = UDim2.new(0.1, 0, 0.1, 0)
frame.Position = UDim2.new(0.90, 0, 0.20, 0)
frame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
frame.Parent = screenGui

-- Настройка кнопки "Суперсила"
superPowerButton.Size = UDim2.new(1, 0, 1, 0)
superPowerButton.Position = UDim2.new(0, 0, 0, 0)
superPowerButton.Text = "флай (Выключен)"
superPowerButton.Parent = frame

-- Переменная для состояния функции
local superPowerEnabled = false

-- Функция для активации/деактивации суперсилы
local function toggleSuperPower()
    superPowerEnabled = not superPowerEnabled
    if superPowerEnabled then
        superPowerButton.Text = "флай (Включен)"
        _G.speed = 120
_G.enabled = true

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local root = game.Players.LocalPlayer.Character.PrimaryPart

UserInputService.InputBegan:Connect(function(inputObject, processed)
    if inputObject.KeyCode == Enum.KeyCode.Q then
        _G.enabled = not _G.enabled
    end
end)

RunService.RenderStepped:Connect(function()
    if _G.enabled then
        root.Velocity = root.CFrame.LookVector * _G.speed
    end
end)
        print("Суперсила активирована.")
        
        -- Пример реализации суперсилы (увеличение скорости)
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = 50 -- Увеличиваем скорость
        end
    else
        superPowerButton.Text = "Суперсила (Выключена)"
        _G.speed = 100
_G.enabled = false

local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local root = game.Players.LocalPlayer.Character.PrimaryPart

UserInputService.InputBegan:Connect(function(inputObject, processed)
    if inputObject.KeyCode == Enum.KeyCode.Q then
        _G.enabled = not _G.enabled
    end
end)

RunService.RenderStepped:Connect(function()
    if _G.enabled then
        root.Velocity = root.CFrame.LookVector * _G.speed
    end
end)
        print("Суперсила деактивирована.")
        
        -- Возвращаем скорость к норме
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = 16 -- Возвращаем обычную скорость
        end
    end
end

-- Подключение функции к кнопке
superPowerButton.MouseButton1Click:Connect(toggleSuperPower)

-- Добавляем ScreenGui в StarterGui
screenGui.Parent = player:WaitForChild("PlayerGui")



