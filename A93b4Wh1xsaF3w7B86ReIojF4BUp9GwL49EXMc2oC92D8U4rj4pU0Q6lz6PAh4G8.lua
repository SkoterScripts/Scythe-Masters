local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
if getgenv().SCRIPT_ALREADY_LOADED then
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\226\215\218\55\242\190\213\57\196\202", "\126\177\163\187\69\134\219\167")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\16\200\36\193\210\44\217\35\195\245\32\204\62\204\243\45", "\156\67\173\74\165"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\0\190\93\26\185", "\38\84\215\41\118\220\70")]=LUAOBFUSACTOR_DECRYPT_STR_0("\113\0\43\1\241", "\158\48\118\66\114"),[LUAOBFUSACTOR_DECRYPT_STR_0("\159\33\8\34", "\155\203\68\112\86\19\197")]="O script já está em execução.",[LUAOBFUSACTOR_DECRYPT_STR_0("\98\200\36\253\84\113\234\246", "\152\38\189\86\156\32\24\133")]=5});
	return;
end
getgenv().SCRIPT_ALREADY_LOADED = true;
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\204\91\166\95\249\69\180", "\38\156\55\199"));
local player = Players.LocalPlayer;
local WHITELIST_VIP = {[1519441734]=true,[10114077871]=true,[10189971388]=true,[10230671935]=true};
local function isVip(plr)
	return WHITELIST_VIP[plr.UserId] == true;
end
local WHITELIST_PASSWORD = {[10174283477]=true,[1258602752]=true};
local function canUsePassword(plr)
	return isVip(plr) or (WHITELIST_PASSWORD[plr.UserId] == true);
end
local EXPIRATION = {[LUAOBFUSACTOR_DECRYPT_STR_0("\177\120\125\58", "\35\200\29\28\72\115\20\154")]=2026,[LUAOBFUSACTOR_DECRYPT_STR_0("\20\176\223\203\133", "\84\121\223\177\191\237\76")]=1,[LUAOBFUSACTOR_DECRYPT_STR_0("\191\87\208", "\161\219\54\169\192\90\48\80")]=7,[LUAOBFUSACTOR_DECRYPT_STR_0("\65\77\21\55", "\69\41\34\96")]=5,[LUAOBFUSACTOR_DECRYPT_STR_0("\177\202\217", "\75\220\163\183\106\98")]=55};
local function toTimestamp(t)
	return os.time({[LUAOBFUSACTOR_DECRYPT_STR_0("\27\191\138\37", "\185\98\218\235\87")]=t.year,[LUAOBFUSACTOR_DECRYPT_STR_0("\198\51\41\242\214", "\202\171\92\71\134\190")]=t.month,[LUAOBFUSACTOR_DECRYPT_STR_0("\45\192\53", "\232\73\161\76")]=t.day,[LUAOBFUSACTOR_DECRYPT_STR_0("\179\214\87\79", "\126\219\185\34\61")]=t.hour,[LUAOBFUSACTOR_DECRYPT_STR_0("\1\199\80", "\135\108\174\62\18\30\23\147")]=t.min,[LUAOBFUSACTOR_DECRYPT_STR_0("\165\236\41", "\167\214\137\74\171\120\206\83")]=0});
end
local expireTime = toTimestamp(EXPIRATION);
if not isVip(player) then
	task.spawn(function()
		local function sendNotification(title, text, duration)
			game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\184\228\51\79\236\162\153\215\39\84", "\199\235\144\82\61\152")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\52\19\183\47\41\25\173\34\1\31\186\42\19\31\182\37", "\75\103\118\217"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\243\93\100\24\188", "\126\167\52\16\116\217")]=(title or "Aviso de Expiração"),[LUAOBFUSACTOR_DECRYPT_STR_0("\252\43\56\148", "\156\168\78\64\224\212\121")]=text,[LUAOBFUSACTOR_DECRYPT_STR_0("\35\251\183\207\19\231\170\192", "\174\103\142\197")]=(duration or 7),[LUAOBFUSACTOR_DECRYPT_STR_0("\127\43\80\54", "\152\54\72\63\88\69\62")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\198\246\93\199\215\235\72\221\192\180\19\155\146\190\15\133\148\185\9\141\151\182", "\60\180\164\142")});
		end
		local warnings = {{[LUAOBFUSACTOR_DECRYPT_STR_0("\75\91\6\38\41\233\1", "\114\56\62\101\73\71\141")]=3600,[LUAOBFUSACTOR_DECRYPT_STR_0("\181\250\220", "\164\216\137\187")]=LUAOBFUSACTOR_DECRYPT_STR_0("\244\231\61\166\167\243\75\131\166\57\189\180\255\75\194\231\35\179\230\241\75\193\229\35\187\182\234\75\215\254\33\187\180\255\25\147", "\107\178\134\81\210\198\158")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\43\11\129\201\164\60\29", "\202\88\110\226\166")]=1800,[LUAOBFUSACTOR_DECRYPT_STR_0("\206\28\133", "\170\163\111\226\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\55\49\190\44\79\58\105\66\96\242\53\71\57\60\5\63\161\120\94\54\59\16\112\189\120\93\52\59\24\32\166\120\75\47\57\24\34\179\42\15", "\73\113\80\210\88\46\87")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\146\41\206\29\233\133\63", "\135\225\76\173\114")]=600,[LUAOBFUSACTOR_DECRYPT_STR_0("\23\254\191", "\199\122\141\216\208\204\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\220\28\228\121\251\237\140\64\176\117\255\163\200\4\255\107\182\189\220\2\241\56\249\237\206\19\226\113\230\185\157\21\232\104\255\191\220\2\177", "\150\205\189\112\144\24")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\54\129\188\67\10\140\2", "\112\69\228\223\44\100\232\113")]=300,[LUAOBFUSACTOR_DECRYPT_STR_0("\217\12\0", "\230\180\127\103\179\214\28")]=LUAOBFUSACTOR_DECRYPT_STR_0("\170\4\83\82\229\76\160\217\69\82\79\234\84\244\131\22\31\86\229\83\225\204\10\31\85\231\83\233\156\17\31\67\252\81\233\158\4\77\7", "\128\236\101\63\38\132\33")},{[LUAOBFUSACTOR_DECRYPT_STR_0("\191\172\18\75\184\239\220", "\175\204\201\113\36\214\139")]=60,[LUAOBFUSACTOR_DECRYPT_STR_0("\74\223\50", "\100\39\172\85\188")]=LUAOBFUSACTOR_DECRYPT_STR_0("\139\121\181\148\50\160\56\184\144\54\163\121\170\192\98\237\117\176\142\38\185\119\248\192\0\174\106\176\144\39\237\110\184\137\115\168\96\169\137\33\172\106\249\133\62\237\122\171\133\37\168\57", "\83\205\24\217\224")}};
		while true do
			local timeLeft = expireTime - os.time();
			if (timeLeft <= 0) then
				sendNotification(LUAOBFUSACTOR_DECRYPT_STR_0("\213\230\255\20\214\241\141\24\222\245\228\15\199\225\226", "\93\134\165\173"), "O tempo acabou. Você será kickado em breve.", 10);
				break;
			end
			for i = #warnings, 1, -1 do
				local warn = warnings[i];
				if ((timeLeft <= warn.seconds) and not warn.sent) then
					sendNotification("Aviso de Expiração", warn.msg, 8);
					warn.sent = true;
					table.remove(warnings, i);
				end
			end
			task.wait(1);
		end
	end);
end
local function formatTime(seconds)
	if (seconds < 0) then
		return LUAOBFUSACTOR_DECRYPT_STR_0("\238\162\210", "\30\222\146\161\162\90\174\210");
	end
	local days = math.floor(seconds / 86400);
	seconds = seconds % 86400;
	local hours = math.floor(seconds / 3600);
	seconds = seconds % 3600;
	local minutes = math.floor(seconds / 60);
	seconds = seconds % 60;
	if (days > 0) then
		return string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\160\74\116\74\160\30\34\14\237\14\53\90\183\74\125\74\160\30\34\14\246", "\106\133\46\16"), days, hours, minutes, seconds);
	else
		return string.format(LUAOBFUSACTOR_DECRYPT_STR_0("\29\112\33\248\82\0\29\112\33\248\87\0\29\112\33\248\73", "\32\56\64\19\156\58"), hours, minutes, seconds);
	end
end
if ((os.time() >= expireTime) and not isVip(player)) then
	local gui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\105\203\247\83\95\252\167\79\193", "\224\58\168\133\54\58\146"));
	gui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\124\78\91\244\103\131\131\44\76\95", "\107\57\54\43\157\21\230\231");
	gui.ResetOnSpawn = false;
	gui.Parent = player:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\235\135\16\236\188\206\232\206\130", "\175\187\235\113\149\217\188"));
	local frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\26\189\128\65\230", "\24\92\207\225\44\131\25"), gui);
	frame.Size = UDim2.fromScale(0.4, 0.25);
	frame.Position = UDim2.fromScale(0.3, 0.375);
	frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20);
	frame.BorderSizePixel = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\126\250\155\67\9\115\78\193", "\29\43\179\216\44\123"), frame).CornerRadius = UDim.new(0, 14);
	local title = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\137\220\56\88\145\216\34\73\177", "\44\221\185\64"), frame);
	title.Size = UDim2.fromScale(1, 0.4);
	title.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\50\196\122\118\67\53\167\109\103\67\40\213\105\123\92", "\19\97\135\40\63");
	title.Font = Enum.Font.GothamBold;
	title.TextScaled = true;
	title.TextColor3 = Color3.fromRGB(255, 80, 80);
	title.BackgroundTransparency = 1;
	local desc = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\154\89\43\47\3\48\172\89\63", "\81\206\60\83\91\79"), frame);
	desc.Size = UDim2.fromScale(0.9, 0.4);
	desc.Position = UDim2.fromScale(0.05, 0.45);
	desc.Text = "Este script expirou.\nAcesso bloqueado.";
	desc.Font = Enum.Font.Gotham;
	desc.TextScaled = true;
	desc.TextWrapped = true;
	desc.TextColor3 = Color3.new(1, 1, 1);
	desc.BackgroundTransparency = 1;
	return;
end
task.spawn(function()
	while true do
		if ((os.time() >= expireTime) and not isVip(player)) then
			player:Kick(LUAOBFUSACTOR_DECRYPT_STR_0("\125\168\194\123\63\215\13\161\86\187\217\96\46\199\66", "\196\46\203\176\18\79\163\45"));
			break;
		end
		task.wait(1);
	end
end);
local PASSWORD = LUAOBFUSACTOR_DECRYPT_STR_0("\142\116", "\143\216\66\30\126\68\155");
local unlocked = false;
local screenGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\153\203\31\206\192\173\240\244\163", "\129\202\168\109\171\165\195\183"));
screenGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\18\89\36\203\201\27\244\38\127\34\209", "\134\66\56\87\184\190\116");
screenGui.ResetOnSpawn = false;
screenGui.Parent = player:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\12\61\8\162\28\249\6\32\53", "\85\92\81\105\219\121\139\65"));
local frame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\219\161\81\72\121", "\191\157\211\48\37\28"), screenGui);
frame.Size = UDim2.fromScale(0.3, 0.32);
frame.Position = UDim2.fromScale(0.35, 0.375);
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25);
frame.BorderSizePixel = 0;
local timerLabel = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\235\26\236\8\22\222\29\241\16", "\90\191\127\148\124"), frame);
timerLabel.Size = UDim2.fromScale(1, 0.18);
timerLabel.Position = UDim2.fromScale(0, 0.8);
timerLabel.BackgroundTransparency = 1;
timerLabel.TextColor3 = Color3.fromRGB(200, 200, 200);
timerLabel.Font = Enum.Font.Gotham;
timerLabel.TextScaled = true;
timerLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\91\134\60\5\125\128\47\25\124\136\110\3\125\138\62\24\54\201\96", "\119\24\231\78");
task.spawn(function()
	while screenGui and screenGui.Parent do
		if isVip(player) then
			timerLabel.Text = "Acesso VIP • Sem expiração";
		else
			local remaining = expireTime - os.time();
			if (remaining <= 0) then
				timerLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\167\53\181\67\206\65\21\141", "\113\226\77\197\42\188\32");
				break;
			else
				timerLabel.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\31\14\228\188\40\23\180\176\55\76\180", "\213\90\118\148") .. formatTime(remaining);
			end
		end
		task.wait(1);
	end
end);
local UserInputService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\110\61\177\68\100\85\62\161\66\126\94\60\162\95\78\94", "\45\59\78\212\54"));
local dragging = false;
local dragStart;
local startPos;
local function update(input)
	local delta = input.Position - dragStart;
	frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y);
end
frame.InputBegan:Connect(function(input)
	if ((input.UserInputType == Enum.UserInputType.MouseButton1) or (input.UserInputType == Enum.UserInputType.Touch)) then
		dragging = true;
		dragStart = input.Position;
		startPos = frame.Position;
		input.Changed:Connect(function()
			if (input.UserInputState == Enum.UserInputState.End) then
				dragging = false;
			end
		end);
	end
end);
frame.InputChanged:Connect(function(input)
	if (dragging and ((input.UserInputType == Enum.UserInputType.MouseMovement) or (input.UserInputType == Enum.UserInputType.Touch))) then
		update(input);
	end
end);
local corner = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\37\127\160\132\148\32\168\226", "\144\112\54\227\235\230\78\205"), frame);
corner.CornerRadius = UDim.new(0, 12);
local title = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\135\45\23\232\252\90\177\45\3", "\59\211\72\111\156\176"), frame);
title.Size = UDim2.fromScale(1, 0.3);
title.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\106\142\228\36\90\130\163\44\14\148\230\35\70\134", "\77\46\231\131");
title.TextColor3 = Color3.new(1, 1, 1);
title.BackgroundTransparency = 1;
title.Font = Enum.Font.GothamBold;
title.TextScaled = true;
local box = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\142\81\174\84\152\91\174", "\32\218\52\214"), frame);
box.Size = UDim2.fromScale(0.8, 0.25);
box.Position = UDim2.fromScale(0.1, 0.35);
box.PlaceholderText = LUAOBFUSACTOR_DECRYPT_STR_0("\125\18\63\160\240\254\11\20", "\58\46\119\81\200\145\208\37");
box.Text = "";
box.ClearTextOnFocus = false;
box.Font = Enum.Font.Gotham;
box.TextScaled = true;
box.BackgroundColor3 = Color3.fromRGB(40, 40, 40);
box.TextColor3 = Color3.new(1, 1, 1);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\30\165\19\163\187\179\51\57", "\86\75\236\80\204\201\221"), box).CornerRadius = UDim.new(0, 8);
local button = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\70\68\111\145\220\158\102\85\120\139", "\235\18\33\23\229\158"), frame);
button.Size = UDim2.fromScale(0.5, 0.22);
button.Position = UDim2.fromScale(0.25, 0.6);
button.Text = LUAOBFUSACTOR_DECRYPT_STR_0("\115\181\207\189\89\168\204\186\66", "\219\48\218\161");
button.Font = Enum.Font.GothamBold;
button.TextScaled = true;
button.BackgroundColor3 = Color3.fromRGB(0, 170, 255);
button.TextColor3 = Color3.new(1, 1, 1);
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\95\70\201\65\229\246", "\128\132\17\28\41\187\47"), button).CornerRadius = UDim.new(0, 8);
local loadingGui = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\50\49\20\63\88\15\21\19\51", "\61\97\82\102\90"));
loadingGui.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\128\33\170\79\206\89\25\46\185\39", "\105\204\78\203\43\167\55\126");
loadingGui.ResetOnSpawn = false;
loadingGui.Enabled = false;
loadingGui.Parent = player.PlayerGui;
local loadingFrame = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\131\184\34\19\22", "\49\197\202\67\126\115\100\167"), loadingGui);
loadingFrame.Size = UDim2.fromScale(0.25, 0.15);
loadingFrame.Position = UDim2.fromScale(0.375, 0.425);
loadingFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25);
loadingFrame.BorderSizePixel = 0;
Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\2\114\252\38\146\88\91\37", "\62\87\59\191\73\224\54"), loadingFrame).CornerRadius = UDim.new(0, 12);
local dots = {};
for i = 1, 3 do
	local dot = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\193\16\251\196\226", "\169\135\98\154"), loadingFrame);
	dot.Size = UDim2.fromScale(0.1, 0.25);
	dot.Position = UDim2.fromScale(0.2 + ((i - 1) * 0.2), 0.55);
	dot.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	dot.BorderSizePixel = 0;
	Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\254\94\7\91\239\61\205\217", "\168\171\23\68\52\157\83"), dot).CornerRadius = UDim.new(1, 0);
	dots[i] = dot;
end
button.MouseButton1Click:Connect(function()
	if (box.Text ~= PASSWORD) then
		return;
	end
	if not canUsePassword(player) then
		player:Kick("Você não tem permissão para usar este script");
		return;
	end
	unlocked = false;
	screenGui.Enabled = false;
	loadingGui.Enabled = true;
	local TweenService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\192\102\240\168\43\30\130\230\103\252\174\32", "\231\148\17\149\205\69\77"));
	local running = true;
	task.spawn(function()
		while running do
			for _, dot in ipairs(dots) do
				local originalPos = dot.Position;
				local up = TweenService:Create(dot, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {[LUAOBFUSACTOR_DECRYPT_STR_0("\176\168\212\242\67\246\143\169", "\159\224\199\167\155\55")]=(originalPos - UDim2.fromScale(0, 0.2))});
				local down = TweenService:Create(dot, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {[LUAOBFUSACTOR_DECRYPT_STR_0("\199\252\47\219\227\250\51\220", "\178\151\147\92")]=originalPos});
				up:Play();
				up.Completed:Wait();
				down:Play();
				down.Completed:Wait();
				task.wait(0.1);
			end
		end
	end);
	task.wait(math.random(3, 10));
	running = false;
	loadingGui:Destroy();
	unlocked = true;
end);
repeat
	task.wait();
until unlocked 
local DrRayLibrary = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\132\233\88\34\1\22\53\195\239\77\37\92\75\115\152\245\89\48\7\95\127\158\254\67\60\6\73\116\152\179\79\61\31\3\91\182\196\95\21\27\88\114\153\255\3\22\0\126\123\149\176\121\27\95\96\115\142\239\77\32\11\3\119\141\244\66\125\54\94\72\141\228\2\62\7\77", "\26\236\157\44\82\114\44")))();
local window = DrRayLibrary:Load("", LUAOBFUSACTOR_DECRYPT_STR_0("\14\43\211\90\63\34\193", "\59\74\78\181"));
local tab = DrRayLibrary.newTab(LUAOBFUSACTOR_DECRYPT_STR_0("\4\196\78\85\243\3\208\72\87", "\211\69\177\58\58"), LUAOBFUSACTOR_DECRYPT_STR_0("\158\232\120\242\236\226\179\205\124\231\236", "\171\215\133\25\149\137"));
local G = {[LUAOBFUSACTOR_DECRYPT_STR_0("\224\221\38\245", "\34\129\168\82\154\143\80\156")]=false};
local positions = {CFrame.new(-4197, 306, 5439),CFrame.new(-4179, 306, 5437),CFrame.new(-4148, 306, 5442),CFrame.new(-4125, 306, 5440),CFrame.new(-4100, 306, 5445),CFrame.new(-4205, 306, 5465),CFrame.new(-4183, 306, 5460),CFrame.new(-4167, 306, 5455),CFrame.new(-4138, 306, 5463),CFrame.new(-4121, 306, 5465),CFrame.new(-4099, 306, 5473),CFrame.new(-4154, 306, 5476),CFrame.new(-4186, 306, 5475),CFrame.new(-4179, 306, 5492),CFrame.new(-4161, 306, 5493),CFrame.new(-4146, 306, 5497),CFrame.new(-4127, 306, 5493),CFrame.new(-4105, 306, 5492),CFrame.new(-4096, 306, 5506),CFrame.new(-4119, 306, 5513),CFrame.new(-4143, 306, 5522),CFrame.new(-4157, 306, 5536),CFrame.new(-4139, 306, 5542),CFrame.new(-4112, 306, 5531),CFrame.new(-4122, 306, 5548),CFrame.new(-4137, 306, 5559),CFrame.new(-4129, 306, 5579),CFrame.new(-4115, 306, 5570),CFrame.new(-4105, 306, 5553),CFrame.new(-4091, 306, 5539),CFrame.new(-4081, 306, 5526),CFrame.new(-4063, 306, 5514),CFrame.new(-4065, 306, 5531),CFrame.new(-4080, 306, 5553),CFrame.new(-4093, 306, 5569),CFrame.new(-4106, 306, 5595),CFrame.new(-4125, 306, 5598),CFrame.new(-4115, 306, 5610),CFrame.new(-4091, 306, 5615),CFrame.new(-4086, 306, 5593),CFrame.new(-4069, 306, 5572),CFrame.new(-4058, 306, 5550),CFrame.new(-4048, 306, 5525),CFrame.new(-4033, 306, 5513),CFrame.new(-4038, 306, 5546),CFrame.new(-4042, 306, 5561),CFrame.new(-4045, 306, 5579),CFrame.new(-4022, 306, 5565),CFrame.new(-3967, 306, 5522),CFrame.new(-3977, 306, 5542),CFrame.new(-3973, 306, 5557),CFrame.new(-3970, 306, 5587),CFrame.new(-3953, 306, 5600),CFrame.new(-3951, 306, 5581),CFrame.new(-3943, 306, 5563),CFrame.new(-3970, 306, 5561),CFrame.new(-3957, 306, 5544),CFrame.new(-3953, 306, 5514),CFrame.new(-3937, 306, 5513),CFrame.new(-3937, 306, 5537),CFrame.new(-3929, 306, 5575),CFrame.new(-3923, 306, 5557),CFrame.new(-3933, 306, 5516),CFrame.new(-3912, 306, 5511),CFrame.new(-3916, 306, 5527),CFrame.new(-3911, 306, 5542),CFrame.new(-3907, 306, 5569),CFrame.new(-3909, 306, 5591),CFrame.new(-3889, 306, 5585),CFrame.new(-3891, 306, 5566),CFrame.new(-3894, 306, 5544),CFrame.new(-3894, 306, 5525),CFrame.new(-3881, 306, 5543),CFrame.new(-3868, 306, 5563),CFrame.new(-3849, 306, 5566),CFrame.new(-3855, 306, 5543),CFrame.new(-3876, 306, 5523),CFrame.new(-3891, 306, 5499),CFrame.new(-3899, 306, 5479),CFrame.new(-3874, 306, 5503),CFrame.new(-3855, 306, 5521),CFrame.new(-3845, 306, 5530),CFrame.new(-3825, 306, 5507),CFrame.new(-3848, 306, 5501),CFrame.new(-3865, 306, 5488),CFrame.new(-3884, 306, 5468),CFrame.new(-3898, 306, 5461),CFrame.new(-3805, 306, 5504),CFrame.new(-3819, 306, 5491),CFrame.new(-3836, 306, 5482),CFrame.new(-3855, 306, 5468),CFrame.new(-3871, 306, 5450),CFrame.new(-3886, 306, 5443),CFrame.new(-3857, 306, 5436),CFrame.new(-3840, 306, 5449),CFrame.new(-3817, 306, 5443),CFrame.new(-3801, 306, 5447),CFrame.new(-3810, 306, 5388),CFrame.new(-3831, 306, 5389),CFrame.new(-3856, 306, 5381),CFrame.new(-3881, 306, 5390),CFrame.new(-3898, 306, 5372),CFrame.new(-3874, 306, 5371),CFrame.new(-3839, 306, 5372),CFrame.new(-3821, 306, 5368),CFrame.new(-3835, 306, 5374),CFrame.new(-3835, 306, 5389),CFrame.new(-3794, 306, 5374),CFrame.new(-3782, 306, 5353),CFrame.new(-3803, 306, 5356),CFrame.new(-3823, 306, 5348),CFrame.new(-3845, 306, 5358),CFrame.new(-3904, 306, 5347),CFrame.new(-3883, 306, 5339),CFrame.new(-3864, 306, 5330),CFrame.new(-3783, 306, 5332),CFrame.new(-3800, 306, 5336),CFrame.new(-3802, 306, 5320),CFrame.new(-3825, 306, 5322),CFrame.new(-3844, 306, 5334),CFrame.new(-3864, 306, 5348),CFrame.new(-3887, 306, 5355),CFrame.new(-3866, 306, 5350),CFrame.new(-3885, 306, 5356),CFrame.new(-3845, 306, 5316),CFrame.new(-3836, 306, 5301),CFrame.new(-3830, 306, 5282),CFrame.new(-3863, 306, 5304),CFrame.new(-3879, 306, 5310),CFrame.new(-3896, 306, 5322),CFrame.new(-3839, 306, 5268),CFrame.new(-3851, 306, 5282),CFrame.new(-3872, 306, 5289),CFrame.new(-3899, 306, 5299),CFrame.new(-3928, 306, 5310),CFrame.new(-3918, 306, 5292),CFrame.new(-3905, 306, 5281),CFrame.new(-3883, 306, 5273),CFrame.new(-3859, 306, 5268),CFrame.new(-3864, 306, 5239),CFrame.new(-3877, 306, 5251),CFrame.new(-3896, 306, 5255),CFrame.new(-3919, 306, 5262),CFrame.new(-3938, 306, 5277),CFrame.new(-3946, 306, 5300),CFrame.new(-3963, 306, 5319),CFrame.new(-3883, 306, 5228),CFrame.new(-3903, 306, 5228),CFrame.new(-3922, 306, 5215),CFrame.new(-3916, 306, 5241),CFrame.new(-3941, 306, 5210),CFrame.new(-3940, 306, 5252),CFrame.new(-3961, 306, 5250),CFrame.new(-3974, 306, 5256),CFrame.new(-3959, 306, 5279),CFrame.new(-3975, 306, 5278),CFrame.new(-3966, 306, 5296),CFrame.new(-3979, 306, 5308),CFrame.new(-4020, 306, 5281),CFrame.new(-4027, 306, 5294),CFrame.new(-4038, 306, 5313),CFrame.new(-4030, 306, 5257),CFrame.new(-4050, 306, 5245),CFrame.new(-4049, 306, 5268),CFrame.new(-4048, 306, 5289),CFrame.new(-4054, 306, 5305),CFrame.new(-4067, 306, 5316),CFrame.new(-4079, 306, 5306),CFrame.new(-4070, 306, 5280),CFrame.new(-4078, 306, 5261),CFrame.new(-4072, 306, 5246),CFrame.new(-4065, 306, 5226),CFrame.new(-4090, 306, 5242),CFrame.new(-4104, 306, 5258),CFrame.new(-4095, 306, 5277),CFrame.new(-4096, 306, 5300),CFrame.new(-4112, 306, 5294),CFrame.new(-4122, 306, 5275),CFrame.new(-4133, 306, 5256),CFrame.new(-4143, 306, 5288),CFrame.new(-4128, 306, 5305),CFrame.new(-4099, 306, 5320),CFrame.new(-4104, 306, 5337),CFrame.new(-4119, 306, 5324),CFrame.new(-4163, 306, 5291),CFrame.new(-4154, 306, 5326),CFrame.new(-4170, 306, 5332),CFrame.new(-4194, 306, 5331),CFrame.new(-4155, 306, 5328),CFrame.new(-4139, 306, 5339),CFrame.new(-4120, 306, 5352),CFrame.new(-4097, 306, 5359),CFrame.new(-4138, 306, 5356),CFrame.new(-4157, 306, 5352),CFrame.new(-4191, 306, 5348),CFrame.new(-4177, 306, 5360),CFrame.new(-4206, 306, 5355),CFrame.new(-4156, 306, 5373),CFrame.new(-4135, 306, 5386),CFrame.new(-4118, 306, 5373),CFrame.new(-4099, 306, 5383),CFrame.new(-4165, 306, 5388),CFrame.new(-4185, 306, 5380),CFrame.new(-4203, 306, 5379),CFrame.new(-4137, 306, 5386),CFrame.new(-4148, 305, 5310),CFrame.new(-4125, 305, 5492),CFrame.new(-4143, 305, 5499),CFrame.new(-4030, 305, 5255),CFrame.new(-4021, 305, 5536),CFrame.new(-4067, 305, 5596),CFrame.new(-4067, 305, 5614),CFrame.new(-3927, 305, 5577),CFrame.new(-3909, 305, 5545),CFrame.new(-3846, 305, 5564),CFrame.new(-3831, 305, 5548),CFrame.new(-3842, 305, 5530),CFrame.new(-3829, 305, 5466),CFrame.new(-3812, 305, 5468),CFrame.new(-3800, 305, 5483),CFrame.new(-3787, 305, 5470),CFrame.new(-3934, 305, 5235),CFrame.new(-3781, 305, 5350),CFrame.new(-3817, 305, 5368),CFrame.new(-3912, 305, 5510),CFrame.new(-3890, 305, 5582)};
tab.newToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\166\189\63\14\92\79\155\197\179\38\31\71\67\136\145\187\48\4", "\233\229\210\83\107\40\46"), LUAOBFUSACTOR_DECRYPT_STR_0("\226\77\62\211\17\196\2\34\196\0\210\71\60\194\0\210\2\51\195\17\206\79\51\194\12\194\67\63\211\11\213\71", "\101\161\34\82\182"), false, function(state)
	G.auto = state;
	if not state then
		return;
	end
	task.spawn(function()
		while G.auto do
			local char = player.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\192\24\84\255\213\237\139\42\218\2\86\234\235\227\144\58", "\78\136\109\57\158\187\130\226"));
			if hrp then
				for _, cf in ipairs(positions) do
					if not G.auto then
						return;
					end
					hrp.CFrame = cf;
					task.wait();
				end
			end
			task.wait(7);
		end
	end);
end);
tab.newToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\26\58\240\233\63\45\185\226\54\62\235\245\45\127\253\254\126\58\239\244\48\43\246\177\40\54\234\248\40\58\245", "\145\94\95\153"), LUAOBFUSACTOR_DECRYPT_STR_0("\220\207\6\212\14\182\189\202\1\220\14\179\248\141\7\221\79\165\249\222\84\209\65\247\216\219\17\219\90\184", "\215\157\173\116\181\46"), false, function(state)
	local gui = player.PlayerGui:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\6\188\138\224\222\38", "\186\85\212\235\146")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\231\151\19\240\45", "\56\162\225\118\158\89\142"));
	gui.Visible = state;
end);
tab.newToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\120\0\201\183\35\202\28\22\200\160\50\152\88\10\128\170\52\221\82\17\207\239\52\209\79\12\214\170\46", "\184\60\101\160\207\66"), LUAOBFUSACTOR_DECRYPT_STR_0("\16\128\110\189\113\131\60\187\36\139\60\184\52\194\111\180\62\146\60\184\62\194\89\170\52\140\104\179", "\220\81\226\28"), false, function(state)
	local gui = player.PlayerGui:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\54\195\135\245\254\244\27\218\146", "\167\115\181\226\155\138")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\202\13\203\120\94\67", "\166\130\66\135\60\27\17"));
	gui.Visible = state;
end);
tab.newToggle(LUAOBFUSACTOR_DECRYPT_STR_0("\96\79\199\109\49\86\10\221\125\63\84\10\204\122\63\87\94\221\53\52\75\10\203\99\53\74\94\193\53\38\77\89\199\99\53\72", "\80\36\42\174\21"), LUAOBFUSACTOR_DECRYPT_STR_0("\111\18\37\123\14\17\119\125\91\25\119\126\75\80\53\117\65\3\35\105\14\20\56\58\107\6\50\116\90\31", "\26\46\112\87"), false, function(state)
	local gui = player.PlayerGui:WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\156\53\174\122\171\157\74\187\170\55\184", "\212\217\67\203\20\223\223\37")):WaitForChild(LUAOBFUSACTOR_DECRYPT_STR_0("\146\162\132\246\159\191", "\178\218\237\200"));
	gui.Visible = state;
end);
local tabFoice = DrRayLibrary.newTab(LUAOBFUSACTOR_DECRYPT_STR_0("\144\186\239\211\179", "\176\214\213\134"), LUAOBFUSACTOR_DECRYPT_STR_0("\221\160\183\211\173\127\93\220\168\164\209", "\57\148\205\214\180\200\54"));
local Foice = {[LUAOBFUSACTOR_DECRYPT_STR_0("\19\233\60\34\119", "\22\114\157\85\84")]=false};
tabFoice.newToggle("Ativar foice rápida", "Apenas para usuários VIP", false, function(state)
	if (state and not isVip(player)) then
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\247\223\18\214\73\243\186\227\222\26", "\200\164\171\115\164\61\150")):SetCore(LUAOBFUSACTOR_DECRYPT_STR_0("\141\241\13\65\173\177\224\10\67\138\189\245\23\76\140\176", "\227\222\148\99\37"), {[LUAOBFUSACTOR_DECRYPT_STR_0("\7\91\70\250\252", "\153\83\50\50\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\117\118\15\96\164\13\79\115\96\8\97\162\89\82", "\45\61\22\19\124\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\23\21\225", "\217\161\114\109\149\98\16")]="Este recurso é exclusivo para VIPs.",[LUAOBFUSACTOR_DECRYPT_STR_0("\54\53\42\125\168\125\29\46", "\20\114\64\88\28\220")]=5});
		return;
	end
	Foice.ativa = state;
	if not state then
		return;
	end
	task.spawn(function()
		while Foice.ativa do
			local char = player.Character;
			if not char then
				task.wait(0.1);
				continue;
			end
			for _, obj in ipairs(char:GetChildren()) do
				if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\5\14\221\184", "\221\81\97\178\212\152\176")) and ((obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\254\228\4\239\18\200", "\122\173\135\125\155")) or obj.Name:match(LUAOBFUSACTOR_DECRYPT_STR_0("\186\242\3\160\43\57\205\193\197\75\253", "\168\228\161\96\217\95\81")))) then
					local handle = obj:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\243\208\32\88\35\82", "\55\187\177\78\60\79"));
					if (handle and handle:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\30\205\77\226\86\219", "\224\77\174\63\139\38\175")) and handle.Script:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\182\68\85\33\144\68\125\56\129\79\76", "\78\228\33\56"))) then
						handle.Script.RemoteEvent:FireServer();
					end
					break;
				end
			end
			task.wait(0.01);
		end
	end);
end);
