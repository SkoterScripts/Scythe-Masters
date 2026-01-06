if getgenv().SCRIPT_ALREADY_LOADED then
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "Aviso",
		Text = "O script já está em execução.",
		Duration = 5
	})
	return
end

getgenv().SCRIPT_ALREADY_LOADED = true

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- USUÁRIOS QUE NUNCA EXPIRAM
local WHITELIST_VIP = {
	[1519441734] = true,    -- VIP SEM EXPIRAÇÃO (o que já tinha)
	[10114077871] = true,    -- NOVO VIP AQUI (troque pelo UserId real)
	[10189971388] = true, -- amigo 1
	[10230671935] = true,
	-- Pode adicionar mais quantos quiser, um por linha
}

local function isVip(plr)
	return WHITELIST_VIP[plr.UserId] == true
end

-- USUÁRIOS NÃO-VIP QUE PODEM USAR A SENHA
local WHITELIST_PASSWORD = {
	[10174283477] = true, -- amigo 2
}

local function canUsePassword(plr)
	return isVip(plr) or WHITELIST_PASSWORD[plr.UserId] == true
end

-- CONFIGURAÇÃO DA DATA DE EXPIRAÇÃO
local EXPIRATION = {
	year = 2026,
	month = 12,
	day = 7,
	hour = 5,
	min = 55
}

local function toTimestamp(t)
	return os.time({
		year = t.year,
		month = t.month,
		day = t.day,
		hour = t.hour,
		min = t.min,
		sec = 0
	})
end

local expireTime = toTimestamp(EXPIRATION)
-- === SISTEMA DE NOTIFICAÇÕES DE EXPIRAÇÃO (1h, 30min, 10min, 5min, 1min) ===
if not isVip(player) then  -- Só ativa avisos se não for VIP
    task.spawn(function()
        local function sendNotification(title, text, duration)
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = title or "Aviso de Expiração",
                Text = text,
                Duration = duration or 7,
                Icon = "rbxassetid://6031075938"  -- ícone de relógio (opcional)
            })
        end

        local warnings = {
            {seconds = 3600, msg = "Faltam 1 hora para o script expirar!"},
            {seconds = 1800, msg = "Faltam 30 minutos para o script expirar!"},
            {seconds = 600,  msg = "Faltam 10 minutos para o script expirar!"},
            {seconds = 300,  msg = "Faltam 5 minutos para o script expirar!"},
            {seconds = 60,   msg = "Faltam apenas 1 minuto! Script vai expirar em breve!"},
        }

        while true do
            local timeLeft = expireTime - os.time()

            if timeLeft <= 0 then
                sendNotification("SCRIPT EXPIRADO", "O tempo acabou. Você será kickado em breve.", 10)
                break
            end

            for i = #warnings, 1, -1 do
                local warn = warnings[i]
                if timeLeft <= warn.seconds and not warn.sent then
                    sendNotification("Aviso de Expiração", warn.msg, 8)
                    warn.sent = true
                    table.remove(warnings, i)
                end
            end

            task.wait(1)
        end
    end)
end
-- === FIM DOS AVISOS DE EXPIRAÇÃO ===
local function formatTime(seconds)
	if seconds < 0 then
		return "00s"
	end

	local days = math.floor(seconds / 86400)
	seconds = seconds % 86400

	local hours = math.floor(seconds / 3600)
	seconds = seconds % 3600

	local minutes = math.floor(seconds / 60)
	seconds = seconds % 60

	if days > 0 then
		return string.format(
			"%dd %02dh %02dm %02ds",
			days, hours, minutes, seconds
		)
	else
		return string.format(
			"%02dh %02dm %02ds",
			hours, minutes, seconds
		)
	end
end

-- SE JÁ ESTIVER EXPIRADO AO EXECUTAR
if os.time() >= expireTime and not isVip(player) then
	local gui = Instance.new("ScreenGui")
	gui.Name = "ExpiredGui"
	gui.ResetOnSpawn = false
	gui.Parent = player:WaitForChild("PlayerGui")

	local frame = Instance.new("Frame", gui)
	frame.Size = UDim2.fromScale(0.4, 0.25)
	frame.Position = UDim2.fromScale(0.3, 0.375)
	frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	frame.BorderSizePixel = 0
	Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 14)

	local title = Instance.new("TextLabel", frame)
	title.Size = UDim2.fromScale(1, 0.4)
	title.Text = "SCRIPT EXPIRADO"
	title.Font = Enum.Font.GothamBold
	title.TextScaled = true
	title.TextColor3 = Color3.fromRGB(255, 80, 80)
	title.BackgroundTransparency = 1

	local desc = Instance.new("TextLabel", frame)
	desc.Size = UDim2.fromScale(0.9, 0.4)
	desc.Position = UDim2.fromScale(0.05, 0.45)
	desc.Text = "Este script expirou.\nAcesso bloqueado."
	desc.Font = Enum.Font.Gotham
	desc.TextScaled = true
	desc.TextWrapped = true
	desc.TextColor3 = Color3.new(1, 1, 1)
	desc.BackgroundTransparency = 1

	return
end

-- VERIFICAÇÃO CONTÍNUA
task.spawn(function()
	while true do
		if os.time() >= expireTime and not isVip(player) then
			player:Kick("Script expirado")
			break
		end
		task.wait(1)
	end
end)


local PASSWORD = "V6" -- <<< MUDE AQUI
local unlocked = false

-- GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PasswordGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.fromScale(0.3, 0.32)  -- Aumentei a altura para dar mais espaço embaixo
frame.Position = UDim2.fromScale(0.35, 0.375)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0

-- ===== CONTADOR DE EXPIRAÇÃO =====
local timerLabel = Instance.new("TextLabel", frame)
timerLabel.Size = UDim2.fromScale(1, 0.18)      -- Um pouco maior para o texto caber melhor
timerLabel.Position = UDim2.fromScale(0, 0.80)  -- Posição ajustada para ficar visível abaixo do botão
timerLabel.BackgroundTransparency = 1
timerLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
timerLabel.Font = Enum.Font.Gotham
timerLabel.TextScaled = true
timerLabel.Text = "Carregando tempo..."

task.spawn(function()
	while screenGui and screenGui.Parent do
		if isVip(player) then
			timerLabel.Text = "Acesso VIP • Sem expiração"
		else
			local remaining = expireTime - os.time()

			if remaining <= 0 then
				timerLabel.Text = "Expirado"
				break
			else
				timerLabel.Text = "Expira em: " .. formatTime(remaining)
			end
		end

		task.wait(1)
	end
end)

-- ===== PARTE 1: DRAG DA GUI =====
local UserInputService = game:GetService("UserInputService")

local dragging = false
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	frame.Position = UDim2.new(
		startPos.X.Scale,
		startPos.X.Offset + delta.X,
		startPos.Y.Scale,
		startPos.Y.Offset + delta.Y
	)
end

frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
	or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

frame.InputChanged:Connect(function(input)
	if dragging and (
		input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch
	) then
		update(input)
	end
end)
-- ===== FIM PARTE 1 =====


local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 12)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.fromScale(1, 0.3)
title.Text = "Digite a senha"
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextScaled = true

local box = Instance.new("TextBox", frame)
box.Size = UDim2.fromScale(0.8, 0.25)
box.Position = UDim2.fromScale(0.1, 0.35)
box.PlaceholderText = "Senha..."
box.Text = ""
box.ClearTextOnFocus = false
box.Font = Enum.Font.Gotham
box.TextScaled = true
box.BackgroundColor3 = Color3.fromRGB(40,40,40)
box.TextColor3 = Color3.new(1,1,1)

Instance.new("UICorner", box).CornerRadius = UDim.new(0, 8)

local button = Instance.new("TextButton", frame)
button.Size = UDim2.fromScale(0.5, 0.22)
button.Position = UDim2.fromScale(0.25, 0.60)  -- Subi um pouco o botão
button.Text = "Confirmar"
button.Font = Enum.Font.GothamBold
button.TextScaled = true
button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
button.TextColor3 = Color3.new(1,1,1)

Instance.new("UICorner", button).CornerRadius = UDim.new(0, 8)

-- ===== PARTE 2: GUI DE LOADING =====
local loadingGui = Instance.new("ScreenGui")
loadingGui.Name = "LoadingGui"
loadingGui.ResetOnSpawn = false
loadingGui.Enabled = false
loadingGui.Parent = player.PlayerGui

local loadingFrame = Instance.new("Frame", loadingGui)
loadingFrame.Size = UDim2.fromScale(0.25, 0.15)
loadingFrame.Position = UDim2.fromScale(0.375, 0.425)
loadingFrame.BackgroundColor3 = Color3.fromRGB(25,25,25)
loadingFrame.BorderSizePixel = 0
Instance.new("UICorner", loadingFrame).CornerRadius = UDim.new(0,12)

local dots = {}

for i = 1,3 do
	local dot = Instance.new("Frame", loadingFrame)
	dot.Size = UDim2.fromScale(0.1, 0.25)
	dot.Position = UDim2.fromScale(0.2 + (i-1)*0.2, 0.55)
	dot.BackgroundColor3 = Color3.fromRGB(255,255,255)
	dot.BorderSizePixel = 0
	Instance.new("UICorner", dot).CornerRadius = UDim.new(1,0)
	dots[i] = dot
end
-- ===== FIM PARTE 2 =====


-- ===== PARTE 3: CONFIRMAR SENHA + LOADING =====
button.MouseButton1Click:Connect(function()
	if box.Text ~= PASSWORD then return end
	if not canUsePassword(player) then
		player:Kick("Você não tem permissão para usar este script")
		return
	end

	unlocked = false

	-- Fecha GUI da senha
	screenGui.Enabled = false

	-- Abre loading
	loadingGui.Enabled = true

	local TweenService = game:GetService("TweenService")
	local running = true

	-- Animação das bolinhas
	task.spawn(function()
		while running do
			for _, dot in ipairs(dots) do
				local originalPos = dot.Position

				local up = TweenService:Create(
					dot,
					TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
					{Position = originalPos - UDim2.fromScale(0, 0.2)}
				)

				local down = TweenService:Create(
					dot,
					TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In),
					{Position = originalPos}
				)

				up:Play()
				up.Completed:Wait()
				down:Play()
				down.Completed:Wait()

				task.wait(0.1)
			end
		end
	end)

	-- Tempo fake de carregamento (2–5s)
	task.wait(math.random(3,10))

	running = false
	loadingGui:Destroy()

	unlocked = true
end)
-- ===== FIM PARTE 3 =====


-- TRAVA O SCRIPT ATÉ DIGITAR A SENHA
repeat task.wait() until unlocked


local DrRayLibrary = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"
))()

local window = DrRayLibrary:Load("De biel17124 & Yukizx61", "Default")
local tab = DrRayLibrary.newTab("Auto Farm", "ImageIdHere")

local G = {
	auto = false
}

---------------------------------------------------
-- LISTA DE POSIÇÕES
---------------------------------------------------
local positions = {
	CFrame.new(-4197, 306, 5439),
    CFrame.new(-4179, 306, 5437),
    CFrame.new(-4148, 306, 5442),
    CFrame.new(-4125, 306, 5440),
    CFrame.new(-4100, 306, 5445),
    CFrame.new(-4205, 306, 5465),
    CFrame.new(-4183, 306, 5460),	
	CFrame.new(-4167, 306, 5455),
	CFrame.new(-4138, 306, 5463),
	CFrame.new(-4121, 306, 5465),
	CFrame.new(-4099, 306, 5473),
	CFrame.new(-4154, 306, 5476),
	CFrame.new(-4186, 306, 5475),
	CFrame.new(-4179, 306, 5492),
	CFrame.new(-4161, 306, 5493),
	CFrame.new(-4146, 306, 5497),
	CFrame.new(-4127, 306, 5493),
	CFrame.new(-4105, 306, 5492),
	CFrame.new(-4096, 306, 5506),
	CFrame.new(-4119, 306, 5513),
	CFrame.new(-4143, 306, 5522),
	CFrame.new(-4157, 306, 5536),
	CFrame.new(-4139, 306, 5542),
	CFrame.new(-4112, 306, 5531),
	CFrame.new(-4122, 306, 5548),
	CFrame.new(-4137, 306, 5559),
	CFrame.new(-4129, 306, 5579),
	CFrame.new(-4115, 306, 5570),
	CFrame.new(-4105, 306, 5553),
	CFrame.new(-4091, 306, 5539),
	CFrame.new(-4081, 306, 5526),
	CFrame.new(-4063, 306, 5514),
	CFrame.new(-4065, 306, 5531),
	CFrame.new(-4080, 306, 5553),
	CFrame.new(-4093, 306, 5569),
	CFrame.new(-4106, 306, 5595),
	CFrame.new(-4125, 306, 5598),
	CFrame.new(-4115, 306, 5610),
	CFrame.new(-4091, 306, 5615),
	CFrame.new(-4086, 306, 5593),
	CFrame.new(-4069, 306, 5572),
	CFrame.new(-4058, 306, 5550),
	CFrame.new(-4048, 306, 5525),
	CFrame.new(-4033, 306, 5513),
	CFrame.new(-4038, 306, 5546),
	CFrame.new(-4042, 306, 5561),
	CFrame.new(-4045, 306, 5579),
	CFrame.new(-4022, 306, 5565),
	CFrame.new(-3967, 306, 5522),
	CFrame.new(-3977, 306, 5542),
	CFrame.new(-3973, 306, 5557),
	CFrame.new(-3970, 306, 5587),
	CFrame.new(-3953, 306, 5600),
	CFrame.new(-3951, 306, 5581),
	CFrame.new(-3943, 306, 5563),
	CFrame.new(-3970, 306, 5561),
	CFrame.new(-3957, 306, 5544),
	CFrame.new(-3953, 306, 5514),
	CFrame.new(-3937, 306, 5513),
	CFrame.new(-3937, 306, 5537),
	CFrame.new(-3929, 306, 5575),
	CFrame.new(-3923, 306, 5557),
	CFrame.new(-3933, 306, 5516),
	CFrame.new(-3912, 306, 5511),
	CFrame.new(-3916, 306, 5527),
	CFrame.new(-3911, 306, 5542),
	CFrame.new(-3907, 306, 5569),
	CFrame.new(-3909, 306, 5591),
	CFrame.new(-3889, 306, 5585),
	CFrame.new(-3891, 306, 5566),
	CFrame.new(-3894, 306, 5544),
	CFrame.new(-3894, 306, 5525),
	CFrame.new(-3881, 306, 5543),
	CFrame.new(-3868, 306, 5563),
	CFrame.new(-3849, 306, 5566),
	CFrame.new(-3855, 306, 5543),
	CFrame.new(-3876, 306, 5523),
	CFrame.new(-3891, 306, 5499),
	CFrame.new(-3899, 306, 5479),
	CFrame.new(-3874, 306, 5503),
	CFrame.new(-3855, 306, 5521),
	CFrame.new(-3845, 306, 5530),
	CFrame.new(-3825, 306, 5507),
	CFrame.new(-3848, 306, 5501),
	CFrame.new(-3865, 306, 5488),
	CFrame.new(-3884, 306, 5468),
	CFrame.new(-3898, 306, 5461),
    CFrame.new(-3805, 306, 5504),
	CFrame.new(-3819, 306, 5491),
	CFrame.new(-3836, 306, 5482),
	CFrame.new(-3855, 306, 5468),
	CFrame.new(-3871, 306, 5450),
	CFrame.new(-3886, 306, 5443),
	CFrame.new(-3857, 306, 5436),
	CFrame.new(-3840, 306, 5449),
	CFrame.new(-3817, 306, 5443),
	CFrame.new(-3801, 306, 5447),
	CFrame.new(-3810, 306, 5388),
	CFrame.new(-3831, 306, 5389),
	CFrame.new(-3856, 306, 5381),
	CFrame.new(-3881, 306, 5390),
	CFrame.new(-3898, 306, 5372),
	CFrame.new(-3874, 306, 5371),
	CFrame.new(-3839, 306, 5372),
	CFrame.new(-3821, 306, 5368),
	CFrame.new(-3835, 306, 5374),
	CFrame.new(-3835, 306, 5389),
	CFrame.new(-3794, 306, 5374),
	CFrame.new(-3782, 306, 5353),
	CFrame.new(-3803, 306, 5356),
	CFrame.new(-3823, 306, 5348),
	CFrame.new(-3845, 306, 5358),
	CFrame.new(-3904, 306, 5347),
	CFrame.new(-3883, 306, 5339),
	CFrame.new(-3864, 306, 5330),
	CFrame.new(-3783, 306, 5332),
	CFrame.new(-3800, 306, 5336),
	CFrame.new(-3802, 306, 5320),
	CFrame.new(-3825, 306, 5322),
	CFrame.new(-3844, 306, 5334),
	CFrame.new(-3864, 306, 5348),
	CFrame.new(-3887, 306, 5355),
	CFrame.new(-3866, 306, 5350),
	CFrame.new(-3885, 306, 5356),
	CFrame.new(-3845, 306, 5316),
	CFrame.new(-3836, 306, 5301),
	CFrame.new(-3830, 306, 5282),
	CFrame.new(-3863, 306, 5304),
	CFrame.new(-3879, 306, 5310),
	CFrame.new(-3896, 306, 5322),
	CFrame.new(-3839, 306, 5268),
	CFrame.new(-3851, 306, 5282),
	CFrame.new(-3872, 306, 5289),
	CFrame.new(-3899, 306, 5299),
	CFrame.new(-3928, 306, 5310),
	CFrame.new(-3918, 306, 5292),
	CFrame.new(-3905, 306, 5281),
	CFrame.new(-3883, 306, 5273),
	CFrame.new(-3859, 306, 5268),
	CFrame.new(-3864, 306, 5239),
	CFrame.new(-3877, 306, 5251),
	CFrame.new(-3896, 306, 5255),
	CFrame.new(-3919, 306, 5262),
	CFrame.new(-3938, 306, 5277),
	CFrame.new(-3946, 306, 5300),
	CFrame.new(-3963, 306, 5319),
	CFrame.new(-3883, 306, 5228),
	CFrame.new(-3903, 306, 5228),
    CFrame.new(-3922, 306, 5215),
	CFrame.new(-3916, 306, 5241),
	CFrame.new(-3941, 306, 5210),
	CFrame.new(-3940, 306, 5252),
	CFrame.new(-3961, 306, 5250),
	CFrame.new(-3974, 306, 5256),
	CFrame.new(-3959, 306, 5279),
	CFrame.new(-3975, 306, 5278),
	CFrame.new(-3966, 306, 5296),
	CFrame.new(-3979, 306, 5308),
	CFrame.new(-4020, 306, 5281),
	CFrame.new(-4027, 306, 5294),
	CFrame.new(-4038, 306, 5313),
	CFrame.new(-4030, 306, 5257),
	CFrame.new(-4050, 306, 5245),
	CFrame.new(-4049, 306, 5268),
	CFrame.new(-4048, 306, 5289),
	CFrame.new(-4054, 306, 5305),
	CFrame.new(-4067, 306, 5316),
	CFrame.new(-4079, 306, 5306),
	CFrame.new(-4070, 306, 5280),
	CFrame.new(-4078, 306, 5261),
	CFrame.new(-4072, 306, 5246),
	CFrame.new(-4065, 306, 5226),
	CFrame.new(-4090, 306, 5242),
	CFrame.new(-4104, 306, 5258),
	CFrame.new(-4095, 306, 5277),
	CFrame.new(-4096, 306, 5300),
	CFrame.new(-4112, 306, 5294),
	CFrame.new(-4122, 306, 5275),
	CFrame.new(-4133, 306, 5256),
	CFrame.new(-4143, 306, 5288),
	CFrame.new(-4128, 306, 5305),
	CFrame.new(-4099, 306, 5320),
	CFrame.new(-4104, 306, 5337),
	CFrame.new(-4119, 306, 5324),
	CFrame.new(-4163, 306, 5291),
	CFrame.new(-4154, 306, 5326),
	CFrame.new(-4170, 306, 5332),
	CFrame.new(-4194, 306, 5331),
	CFrame.new(-4155, 306, 5328),
	CFrame.new(-4139, 306, 5339),
	CFrame.new(-4120, 306, 5352),
	CFrame.new(-4097, 306, 5359),
    CFrame.new(-4138, 306, 5356),
	CFrame.new(-4157, 306, 5352),
	CFrame.new(-4191, 306, 5348),
	CFrame.new(-4177, 306, 5360),
	CFrame.new(-4206, 306, 5355),
	CFrame.new(-4156, 306, 5373),
	CFrame.new(-4135, 306, 5386),
	CFrame.new(-4118, 306, 5373),
	CFrame.new(-4099, 306, 5383),
	CFrame.new(-4165, 306, 5388),
	CFrame.new(-4185, 306, 5380),
	CFrame.new(-4203, 306, 5379),
	CFrame.new(-4137, 306, 5386),
	CFrame.new(-4148, 305, 5310),
	CFrame.new(-4125, 305, 5492),
	CFrame.new(-4143, 305, 5499),
	CFrame.new(-4030, 305, 5255),
	CFrame.new(-4021, 305, 5536),
	CFrame.new(-4067, 305, 5596),
	CFrame.new(-4067, 305, 5614),
	CFrame.new(-3927, 305, 5577),
	CFrame.new(-3909, 305, 5545),
	CFrame.new(-3846, 305, 5564),
	CFrame.new(-3831, 305, 5548),
	CFrame.new(-3842, 305, 5530),
	CFrame.new(-3829, 305, 5466),
	CFrame.new(-3812, 305, 5468),
	CFrame.new(-3800, 305, 5483),
	CFrame.new(-3787, 305, 5470),
	CFrame.new(-3934, 305, 5235),
	CFrame.new(-3781, 305, 5350),
	CFrame.new(-3817, 305, 5368),
	CFrame.new(-3912, 305, 5510),
	CFrame.new(-3890, 305, 5582),
}

---------------------------------------------------
-- TOGGLE 1: AUTO FARM
---------------------------------------------------
tab.newToggle("Coletar automatico", "Colete presentes automaticamente", false, function(state)
	G.auto = state

	if not state then
		return -- para imediatamente
	end

	task.spawn(function()
		while G.auto do
			local char = player.Character
			local hrp = char and char:FindFirstChild("HumanoidRootPart")

			if hrp then
				for _, cf in ipairs(positions) do
					if not G.auto then
						return -- PARA NA HORA
					end

					hrp.CFrame = cf
					task.wait()
				end
			end

			task.wait(7)
		end
	end)
end)

---------------------------------------------------
-- TOGGLE 2: SHARDS VISÍVEL
---------------------------------------------------
tab.newToggle("Deixar shards do evento visivel", "Abra a gui de shards do Evento", false, function(state)
	local gui = player.PlayerGui:WaitForChild("Shards"):WaitForChild("Event")
	gui.Visible = state
end)

---------------------------------------------------
-- TOGGLE 3: SHOP EVENT VISÍVEL
---------------------------------------------------
tab.newToggle("Deixar shop do evento visivel", "Abra a gui de shop do Evento", false, function(state)
	local gui = player.PlayerGui:WaitForChild("EventShop"):WaitForChild("HOLDER")
	gui.Visible = state
end)

---------------------------------------------------
-- TOGGLE 4: BOOST EVENT VISÍVEL
---------------------------------------------------
tab.newToggle("Deixar shop boosts do evento visivel", "Abra a gui de boosts do Evento", false, function(state)
	local gui = player.PlayerGui:WaitForChild("EventBoosts"):WaitForChild("HOLDER")
	gui.Visible = state
end)

---------------------------------------------------
-- TAB: FOICE
---------------------------------------------------
local tabFoice = DrRayLibrary.newTab("Foice", "ImageIdHere")

local Foice = {
	ativa = false
}

---------------------------------------------------
-- TOGGLE 5: FOICE RÁPIDA (VIP ONLY)
---------------------------------------------------
tabFoice.newToggle("Ativar foice rápida", "Apenas para usuários VIP", false, function(state)

	-- 🔒 BLOQUEIO VIP
	if state and not isVip(player) then
		game:GetService("StarterGui"):SetCore("SendNotification", {
			Title = "Acesso restrito",
			Text = "Este recurso é exclusivo para VIPs.",
			Duration = 5
		})
		return -- impede ativar
	end

	Foice.ativa = state

	if not state then
		return
	end

	task.spawn(function()
		while Foice.ativa do
			local char = player.Character
			if not char then
				task.wait(0.1)
				continue
			end

			-- PROCURA SOMENTE A FOICE EQUIPADA
			for _, obj in ipairs(char:GetChildren()) do
				if obj:IsA("Tool") and (obj.Name == "Scythe" or obj.Name:match("^Scythe%d+$")) then
					local handle = obj:FindFirstChild("Handle")
					if handle
					and handle:FindFirstChild("Script")
					and handle.Script:FindFirstChild("RemoteEvent") then
						handle.Script.RemoteEvent:FireServer()
					end
					break
				end
			end

			task.wait(0.01)
		end
	end)
end)