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
local Rayfield = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\217\215\207\53\245\225\136\81\194\202\201\44\243\168\137\19\212\205\206\106\244\186\222\24\216\198\215\33", "\126\177\163\187\69\134\219\167")))();
local Window = Rayfield:CreateWindow({[LUAOBFUSACTOR_DECRYPT_STR_0("\13\204\39\192", "\156\67\173\74\165")]=LUAOBFUSACTOR_DECRYPT_STR_0("\127\230\9\38\179\40\82\59\247\77\19\252\46\71\54\190\69\31\184\39\66\49", "\38\84\215\41\118\220\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\121\21\45\28", "\158\48\118\66\114")]=0,[LUAOBFUSACTOR_DECRYPT_STR_0("\135\43\17\50\122\171\252\159\45\4\58\118", "\155\203\68\112\86\19\197")]=LUAOBFUSACTOR_DECRYPT_STR_0("\116\220\47\250\73\125\233\252\6\244\56\232\69\106\227\249\69\216\118\207\85\113\241\253", "\152\38\189\86\156\32\24\133"),[LUAOBFUSACTOR_DECRYPT_STR_0("\208\88\166\66\245\89\160\117\233\85\179\79\232\91\162", "\38\156\55\199")]=LUAOBFUSACTOR_DECRYPT_STR_0("\170\100\60\27\26\102\243\86\187", "\35\200\29\28\72\115\20\154"),[LUAOBFUSACTOR_DECRYPT_STR_0("\42\183\222\200\185\41\44\13", "\84\121\223\177\191\237\76")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\87\208\166\51\85\60\197", "\161\219\54\169\192\90\48\80"),[LUAOBFUSACTOR_DECRYPT_STR_0("\125\74\5\40\76", "\69\41\34\96")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\198\209\11\23\39\168", "\75\220\163\183\106\98"),[LUAOBFUSACTOR_DECRYPT_STR_0("\54\181\140\48\213\7\143\162\28\220\27\184\130\57\221", "\185\98\218\235\87")]="K",[LUAOBFUSACTOR_DECRYPT_STR_0("\239\53\52\231\220\166\206\14\38\255\216\163\206\48\35\214\204\165\198\44\51\245", "\202\171\92\71\134\190")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\13\200\63\137\43\205\41\170\60\200\32\140\30\192\62\134\32\207\43\155", "\232\73\161\76")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\152\214\76\91\23\188\204\80\92\10\178\214\76\110\31\173\208\76\90", "\126\219\185\34\61")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\41\192\95\112\114\114\247", "\135\108\174\62\18\30\23\147")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\144\230\38\207\29\188\29\198\187\236", "\167\214\137\74\171\120\206\83")]=nil,[LUAOBFUSACTOR_DECRYPT_STR_0("\173\249\62\88\214\166\134\245", "\199\235\144\82\61\152")]=LUAOBFUSACTOR_DECRYPT_STR_0("\37\31\190\107\47\3\187", "\75\103\118\217")},[LUAOBFUSACTOR_DECRYPT_STR_0("\227\93\99\23\182\12\195", "\126\167\52\16\116\217")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\237\32\33\130\184\28\248", "\156\168\78\64\224\212\121")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\46\224\179\199\19\235", "\174\103\142\197")]=LUAOBFUSACTOR_DECRYPT_STR_0("\94\60\75\40\54\4\183\25\44\86\43\38\81\234\82\102\88\63\106\89\246\87\32\70\109\11\125\219\124", "\152\54\72\63\88\69\62"),[LUAOBFUSACTOR_DECRYPT_STR_0("\230\193\227\89\217\198\235\78\254\203\231\82\199", "\60\180\164\142")]=true},[LUAOBFUSACTOR_DECRYPT_STR_0("\115\91\28\26\62\254\6\93\83", "\114\56\62\101\73\71\141")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\147\236\194\247\189\253\207\205\182\238\200", "\164\216\137\187")]={[LUAOBFUSACTOR_DECRYPT_STR_0("\230\239\37\190\163", "\107\178\134\81\210\198\158")]=LUAOBFUSACTOR_DECRYPT_STR_0("\8\28\141\210\175\59\26\135\194", "\202\88\110\226\166"),[LUAOBFUSACTOR_DECRYPT_STR_0("\240\26\128\227\195\215\3\135", "\170\163\111\226\151")]=LUAOBFUSACTOR_DECRYPT_STR_0("\58\53\171\120\125\46\58\5\53\191", "\73\113\80\210\88\46\87"),[LUAOBFUSACTOR_DECRYPT_STR_0("\175\35\217\23", "\135\225\76\173\114")]=[[Key está em meu discord!
https://discord.gg/gnahy5NCCJ]],[LUAOBFUSACTOR_DECRYPT_STR_0("\60\228\180\181\130\188\170\31", "\199\122\141\216\208\204\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\134\216\9", "\150\205\189\112\144\24"),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\133\169\73\47\141\8", "\112\69\228\223\44\100\232\113")]=true,[LUAOBFUSACTOR_DECRYPT_STR_0("\243\13\6\209\157\121\159\242\13\8\222\133\117\146\209", "\230\180\127\103\179\214\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\167\0\70", "\128\236\101\63\38\132\33")]={LUAOBFUSACTOR_DECRYPT_STR_0("\139\253\27\104\166\178\253\244\172\58\22\162\198\154\173\159\18\124\231\229", "\175\204\201\113\36\214\139")}}});
local Tab = Window:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\115\201\39\206\5", "\100\39\172\85\188"), 4483362458);
local ReplicatedStorage = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\159\125\169\140\58\174\121\173\133\55\158\108\182\146\50\170\125", "\83\205\24\217\224"));
local Players = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\214\201\204\36\227\215\222", "\93\134\165\173"));
local LocalPlayer = Players.LocalPlayer;
local Interactions = require(ReplicatedStorage.Source.Packets.Interactions);
local WeaponUtils = require(ReplicatedStorage.Source.Utils.WeaponUtils);
local Constants = require(ReplicatedStorage.Source.Utils.Constants);
local Toggle = Tab:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\144\243\204\199", "\30\222\146\161\162\90\174\210")]="Auto Soco (Sem animação)",[LUAOBFUSACTOR_DECRYPT_STR_0("\198\91\98\24\224\64\100\60\228\66\101\15", "\106\133\46\16")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\126\44\114\251", "\32\56\64\19\156\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\123\221\241\89\106\231\142\89\192", "\224\58\168\133\54\58\146"),[LUAOBFUSACTOR_DECRYPT_STR_0("\122\87\71\241\119\135\132\0", "\107\57\54\43\157\21\230\231")]=function(Value)
	_G.AutoPunch = Value;
	task.spawn(function()
		while _G.AutoPunch do
			local char = LocalPlayer.Character;
			if char then
				local pivot = char:GetPivot() * Constants.MELEE_HITBOX_Z_OFFSET;
				local npcTargets, playerTargets = WeaponUtils.getMeleeTargets(pivot, Vector3.new(6, 6, 6));
				if ((#npcTargets > 0) or (#playerTargets > 0)) then
					Interactions.weaponActivated.send({[LUAOBFUSACTOR_DECRYPT_STR_0("\207\138\3\242\188\200\220", "\175\187\235\113\149\217\188")]=npcTargets,[LUAOBFUSACTOR_DECRYPT_STR_0("\44\163\128\85\230\107\76\61\189\134\73\247\106", "\24\92\207\225\44\131\25")]=playerTargets});
				end
			end
			task.wait(0.5);
		end
	end);
end});
local Paragraph = Tab:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\127\218\172\64\30", "\29\43\179\216\44\123")]=LUAOBFUSACTOR_DECRYPT_STR_0("\156\207\41\95\178", "\44\221\185\64"),[LUAOBFUSACTOR_DECRYPT_STR_0("\34\232\70\75\118\15\243", "\19\97\135\40\63")]="Para funcionar os TP, chegue próximo dos mob"});
local Section = Tab:CreateSection(LUAOBFUSACTOR_DECRYPT_STR_0("\136\93\33\54", "\81\206\60\83\91\79"));
local NpcOrder = {12,26,27,28,29,30,31,32,33,34};
local IgnoredNpcs = {};
local ToggleTPCaracois = Tab:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\96\170\221\119", "\196\46\203\176\18\79\163\45")]="Auto TP Caracóis",[LUAOBFUSACTOR_DECRYPT_STR_0("\155\55\108\12\33\245\251\142\35\114\11\33", "\143\216\66\30\126\68\155")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\140\196\12\204", "\129\202\168\109\171\165\195\183")]=LUAOBFUSACTOR_DECRYPT_STR_0("\3\77\35\215\248\21\244\47\118\7\251", "\134\66\56\87\184\190\116"),[LUAOBFUSACTOR_DECRYPT_STR_0("\31\48\5\183\27\234\34\62", "\85\92\81\105\219\121\139\65")]=function(Value)
	_G.AutoFarmNPC = Value;
	if not Value then
		table.clear(IgnoredNpcs);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPC do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\213\166\93\68\114\208\244\183\98\74\115\203\205\178\66\81", "\191\157\211\48\37\28"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\241\15\247\15", "\90\191\127\148\124"));
			if (hrp and npcFolder) then
				local closestShell;
				local closestNpcId;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrder) do
					if not IgnoredNpcs[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\80\146\35\22\118\136\39\19\74\136\33\3\72\134\60\3", "\119\24\231\78"));
							local shellFolder = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\177\37\160\70\208", "\113\226\77\197\42\188\32"));
							local innerShell = shellFolder and shellFolder:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\9\30\241\185\54", "\213\90\118\148"));
							if (npcHRP and innerShell) then
								local isZero = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\121\39\184\90\79\84\47\166\82\106\78\39", "\45\59\78\212\54"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\36\83\155\159\170\47\175\245\28", "\144\112\54\227\235\230\78\205")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\128\60\22\240\217\65\182\44\35\253\210\94\191", "\59\211\72\111\156\176"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\30\200\178\125", "\77\46\231\131")) then
												isZero = true;
											end
											break;
										end
									end
								end
								if isZero then
									IgnoredNpcs[npcNumber] = true;
								else
									local dist = (innerShell.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestShell = innerShell;
										closestNpcId = npcNumber;
									end
								end
							end
						end
					end
				end
				if not closestShell then
					table.clear(IgnoredNpcs);
				else
					hrp.CFrame = closestShell.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\142\93\162\76\191", "\32\218\52\214")]="Caracóis = 10HP",[LUAOBFUSACTOR_DECRYPT_STR_0("\109\24\63\188\244\190\81", "\58\46\119\81\200\145\208\37")]=""});
local NpcOrderPorcos = {13,14,4,5,39,40,37,38,39,40,41,42};
local IgnoredPorcos = {};
local ToggleTPPorco = Tab:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\5\141\61\169", "\86\75\236\80\204\201\221")]=LUAOBFUSACTOR_DECRYPT_STR_0("\83\84\99\138\190\191\66\1\71\138\236\136\125\82", "\235\18\33\23\229\158"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\175\211\169\85\180\213\141\81\182\212\190", "\219\48\218\161")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\194\125\125\78", "\128\132\17\28\41\187\47")]=LUAOBFUSACTOR_DECRYPT_STR_0("\32\39\18\53\123\0\32\11\20\109\34\2\9\40\94\14", "\61\97\82\102\90"),[LUAOBFUSACTOR_DECRYPT_STR_0("\143\47\167\71\197\86\29\2", "\105\204\78\203\43\167\55\126")]=function(Value)
	_G.AutoFarmNPCPorco = Value;
	if not Value then
		table.clear(IgnoredPorcos);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCPorco do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\141\191\46\31\29\11\206\85\151\165\44\10\35\5\213\69", "\49\197\202\67\126\115\100\167"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\25\75\220\58", "\62\87\59\191\73\224\54"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestNpcId;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderPorcos) do
					if not IgnoredPorcos[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\207\23\247\200\233\13\243\205\213\13\245\221\215\3\232\221", "\169\135\98\154"));
							local torsoFolder = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\255\120\54\71\242", "\168\171\23\68\52\157\83"));
							local innerTorso = torsoFolder and torsoFolder:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\192\126\231\190\42", "\231\148\17\149\205\69\77"));
							if (npcHRP and innerTorso) then
								local isZero = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\162\174\203\247\85\240\129\181\195\220\66\246", "\159\224\199\167\155\55"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\195\246\36\198\219\242\62\215\251", "\178\151\147\92")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\191\233\85\62\27\86\127\136\209\77\48\23\64", "\26\236\157\44\82\114\44"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\122\97\141\11\122", "\59\74\78\181")) then
												isZero = true;
											end
											break;
										end
									end
								end
								if isZero then
									IgnoredPorcos[npcNumber] = true;
								else
									local dist = (innerTorso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = innerTorso;
										closestNpcId = npcNumber;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredPorcos);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\17\216\78\86\182", "\211\69\177\58\58")]=LUAOBFUSACTOR_DECRYPT_STR_0("\129\236\125\244\169\150\247\189\41\165\165\139\150\241\120\228\252\206\247\184\57\164\185", "\171\215\133\25\149\137"),[LUAOBFUSACTOR_DECRYPT_STR_0("\194\199\60\238\234\62\232", "\34\129\168\82\154\143\80\156")]=""});
local NpcOrderTartarugas = {43,44,51,52,45,46,49,50,47,48,53,54,8,9};
local IgnoredTartarugas = {};
local ToggleTPTartarugas = Tab:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\171\179\62\14", "\233\229\210\83\107\40\46")]=LUAOBFUSACTOR_DECRYPT_STR_0("\224\87\38\217\69\245\114\114\226\4\211\86\51\196\16\198\67\33", "\101\161\34\82\182"),[LUAOBFUSACTOR_DECRYPT_STR_0("\203\24\75\236\222\236\150\24\233\1\76\251", "\78\136\109\57\158\187\130\226")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\24\51\248\246", "\145\94\95\153")]=LUAOBFUSACTOR_DECRYPT_STR_0("\220\216\0\218\104\182\239\192\58\229\109\131\252\223\0\212\92\162\250\204\7", "\215\157\173\116\181\46"),[LUAOBFUSACTOR_DECRYPT_STR_0("\22\181\135\254\216\52\183\128", "\186\85\212\235\146")]=function(Value)
	_G.AutoFarmNPCTartarugas = Value;
	if not Value then
		table.clear(IgnoredTartarugas);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCTartarugas do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\234\148\27\255\55\225\81\198\179\25\241\45\222\89\208\149", "\56\162\225\118\158\89\142"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\114\21\195\188", "\184\60\101\160\207\66"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestNpcId;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderTartarugas) do
					if not IgnoredTartarugas[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\25\151\113\189\63\141\117\184\3\141\115\168\1\131\110\168", "\220\81\226\28"));
							local torsoFolder = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\39\218\144\232\229", "\167\115\181\226\155\138"));
							if (npcHRP and torsoFolder) then
								local isZero = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\192\43\235\80\121\126\199\240\38\192\73\114", "\166\130\66\135\60\27\17"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\112\79\214\97\28\69\72\203\121", "\80\36\42\174\21")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\125\4\46\118\71\10\50\126\98\17\53\127\66", "\26\46\112\87"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\233\108\249\58\234\148", "\212\217\67\203\20\223\223\37")) then
												isZero = true;
											end
											break;
										end
									end
								end
								if isZero then
									IgnoredTartarugas[npcNumber] = true;
								else
									local dist = (torsoFolder.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = torsoFolder;
										closestNpcId = npcNumber;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredTartarugas);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\142\132\188\222\191", "\178\218\237\200")]=LUAOBFUSACTOR_DECRYPT_STR_0("\128\188\226\209\246\232\166\130\248\224\237\156\246\148\242\209\167\160\227\138\246\237\182", "\176\214\213\134"),[LUAOBFUSACTOR_DECRYPT_STR_0("\215\162\184\192\173\88\77", "\57\148\205\214\180\200\54")]=""});
local NpcOrderHDC = {55,56,57,58,19,20,61,62,60,59};
local IgnoredHDC = {};
local ToggleTPHDC = Tab:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\60\252\56\49", "\22\114\157\85\84")]=LUAOBFUSACTOR_DECRYPT_STR_0("\229\222\7\203\29\194\152\132\227\28\201\88\251\232\192\202\0\132\126\247\190\193\217\29\197\78", "\200\164\171\115\164\61\150"),[LUAOBFUSACTOR_DECRYPT_STR_0("\157\225\17\87\134\176\224\53\68\143\171\241", "\227\222\148\99\37")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\21\94\83\241", "\153\83\50\50\150")]=LUAOBFUSACTOR_DECRYPT_STR_0("\124\99\103\19\85\170\95\80\88\67\63\91\143\110", "\45\61\22\19\124\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\226\19\1\249\0\113\186\202", "\217\161\114\109\149\98\16")]=function(Value)
	_G.AutoFarmNPCHDC = Value;
	if not Value then
		table.clear(IgnoredHDC);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCHDC do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\58\53\53\125\178\123\27\36\10\115\179\96\34\33\42\104", "\20\114\64\88\28\220"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\31\17\209\167", "\221\81\97\178\212\152\176"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestNpcId;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderHDC) do
					if not IgnoredHDC[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\229\242\16\250\20\194\238\25\201\21\194\243\45\250\8\217", "\122\173\135\125\155"));
							local torsoFolder = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\176\206\18\170\48", "\168\228\161\96\217\95\81"));
							local innerTorso = torsoFolder and torsoFolder:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\207\222\60\79\32", "\55\187\177\78\60\79"));
							if (npcHRP and innerTorso) then
								local isZero = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\15\199\83\231\68\192\129\63\202\120\254\79", "\224\77\174\63\139\38\175"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\176\68\64\58\168\64\90\43\136", "\78\228\33\56")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\253\106\171\15\140\212\123\182\47\132\204\123\190", "\229\174\30\210\99"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\75\162\210\31\184\22", "\89\123\141\230\49\141\93")) then
												isZero = true;
											end
											break;
										end
									end
								end
								if isZero then
									IgnoredHDC[npcNumber] = true;
								else
									local dist = (innerTorso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = innerTorso;
										closestNpcId = npcNumber;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredHDC);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\199\120\226\0\21", "\42\147\17\150\108\112")]=LUAOBFUSACTOR_DECRYPT_STR_0("\57\175\41\126\167\181\79\242\99\42\236\164\79\135\57\126\246\253\10\230\112\63\181\184\95", "\136\111\198\77\31\135"),[LUAOBFUSACTOR_DECRYPT_STR_0("\33\6\169\66\184\234\3", "\201\98\105\199\54\221\132\119")]=""});
local NpcOrderAranha = {6,65,66,7,91,92,93,94};
local IgnoredAranhas = {};
local ToggleTPAranha = Tab:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\13\142\36", "\204\217\108\227\65\98\85")]=LUAOBFUSACTOR_DECRYPT_STR_0("\127\214\225\234\108\244\110\131\212\247\45\206\86\194\230", "\160\62\163\149\133\76"),[LUAOBFUSACTOR_DECRYPT_STR_0("\245\181\31\61\198\216\180\59\46\207\195\165", "\163\182\192\109\79")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\18\42\1\199", "\149\84\70\96\160")]=LUAOBFUSACTOR_DECRYPT_STR_0("\25\19\25\226\30\7\31\224\22\54\46\204\42\7\3\229\57", "\141\88\102\109"),[LUAOBFUSACTOR_DECRYPT_STR_0("\144\82\198\124\24\60\86\202", "\161\211\51\170\16\122\93\53")]=function(Value)
	_G.AutoFarmNPCAranha = Value;
	if not Value then
		table.clear(IgnoredAranhas);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCAranha do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\211\187\191\41\245\161\187\44\201\161\189\60\203\175\160\60", "\72\155\206\210"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\104\106\87\29", "\83\38\26\52\110"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestNpcId;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderAranha) do
					if not IgnoredAranhas[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\112\2\42\71\86\24\46\66\106\24\40\82\104\22\53\82", "\38\56\119\71"));
							local torsoFolder = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\199\224\74\197\42", "\54\147\143\56\182\69"));
							local upperTorso = torsoFolder and torsoFolder:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\227\145\239\76\205\226\142\237\90\208", "\191\182\225\159\41"));
							if (npcHRP and upperTorso) then
								local isZero = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\9\27\36\89\137\136\195\57\22\15\64\130", "\162\75\114\72\53\235\231"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\184\57\92\246\127\3\142\57\72", "\98\236\92\36\130\51")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\151\13\21\182\76\178\176\52\136\24\14\191\73", "\80\196\121\108\218\37\200\213"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\80\60\83\45\5\91\161", "\234\96\19\98\31\43\110")) then
												isZero = true;
											end
											break;
										end
									end
								end
								if isZero then
									IgnoredAranhas[npcNumber] = true;
								else
									local dist = (upperTorso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = upperTorso;
										closestNpcId = npcNumber;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredAranhas);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\50\22\70\203\169", "\235\102\127\50\167\204\18")]=LUAOBFUSACTOR_DECRYPT_STR_0("\102\168\241\34\4\115\16\240\167\109\17\37\28\225\212\55\69\63\69\164\181\126\4\124\2\244\165", "\78\48\193\149\67\36"),[LUAOBFUSACTOR_DECRYPT_STR_0("\19\17\142\12\68\62\10", "\33\80\126\224\120")]=""});
local NpcOrderMamute = {15,150,151,64,67,69};
local IgnoredMamutes = {};
local ToggleTPMamute = Tab:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\194\169\14\193", "\60\140\200\99\164")]=LUAOBFUSACTOR_DECRYPT_STR_0("\166\225\16\41\226\179\196\68\11\163\138\225\16\35\177", "\194\231\148\100\70"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\89\211\177\243\198\82\122\192\175\227\205", "\168\38\44\161\195\150")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\166\240\131\113", "\118\224\156\226\22\80\136\214")]=LUAOBFUSACTOR_DECRYPT_STR_0("\99\251\77\143\100\239\75\141\108\222\122\173\67\227\76\148\71", "\224\34\142\57"),[LUAOBFUSACTOR_DECRYPT_STR_0("\253\166\201\209\113\240\94\5", "\110\190\199\165\189\19\145\61")]=function(Value)
	_G.AutoFarmNPCMamute = Value;
	if not Value then
		table.clear(IgnoredMamutes);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCMamute do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\242\254\122\233\133\200\211\239\69\231\132\211\234\234\101\252", "\167\186\139\23\136\235"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\52\165\139\30", "\109\122\213\232"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestNpcId;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderMamute) do
					if not IgnoredMamutes[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\198\226\175\49\224\248\171\52\220\248\173\36\222\246\176\36", "\80\142\151\194"));
							local torso = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\55\201\101\95\12", "\44\99\166\23"));
							if (npcHRP and torso) then
								local isZero = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\94\254\37\58\49\171\125\229\45\17\38\173", "\196\28\151\73\86\83"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\199\6\49\4\174\89\26\115\255", "\22\147\99\73\112\226\56\120")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\139\97\251\249\132\162\112\230\217\140\186\112\238", "\237\216\21\130\149"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\210\1\8\10\155", "\62\226\46\63\63\208\169")) then
												isZero = true;
											end
											break;
										end
									end
								end
								if isZero then
									IgnoredMamutes[npcNumber] = true;
								else
									local dist = (torso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = torso;
										closestNpcId = npcNumber;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredMamutes);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\209\16\65\143\26", "\62\133\121\53\227\127\109\79")]=LUAOBFUSACTOR_DECRYPT_STR_0("\38\29\54\244\150\243\226\71\65\57\185\150\143\182\17\5\39\240\150\243\226\66\65\57", "\194\112\116\82\149\182\206"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\167\66\12\197\236\26", "\110\89\200\44\120\160\130")]=""});
local NpcOrderPlantas = {179,180,181,184,185,182};
local IgnoredPlantas = {};
local ToggleTPPlantas = Tab:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\133\194\70\67", "\45\203\163\43\38\35\42\91")]="Auto TP Florção de Víboras",[LUAOBFUSACTOR_DECRYPT_STR_0("\241\144\206\49\130\167\64\228\132\208\54\130", "\52\178\229\188\67\231\201")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\7\77\81\3", "\67\65\33\48\100\151\60")]=LUAOBFUSACTOR_DECRYPT_STR_0("\254\242\186\215\213\222\245\163\246\195\252\215\162\217\253\203\230\189", "\147\191\135\206\184"),[LUAOBFUSACTOR_DECRYPT_STR_0("\167\41\170\205\218\82\177\143", "\210\228\72\198\161\184\51")]=function(Value)
	_G.AutoFarmNPCPlantas = Value;
	if not Value then
		table.clear(IgnoredPlantas);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCPlantas do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\30\92\254\17\125\193\63\77\193\31\124\218\6\72\225\4", "\174\86\41\147\112\19"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\117\16\142\24", "\203\59\96\237\107\69\111\113"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestNpcId;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderPlantas) do
					if not IgnoredPlantas[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\12\3\161\224\63\255\222\32\36\163\238\37\192\214\54\2", "\183\68\118\204\129\81\144"));
							local torso = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\58\162\98\247\4", "\226\110\205\16\132\107"));
							if (npcHRP and torso) then
								local isZero = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\201\202\236\213\67\228\194\242\221\102\254\202", "\33\139\163\128\185"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\99\93\28\202\123\89\6\219\91", "\190\55\56\100")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\101\187\37\18\26\249\246\82\131\61\28\22\239", "\147\54\207\92\126\115\131"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\93\126\100\47\88\85", "\30\109\81\85\29\109")) then
												isZero = true;
											end
											break;
										end
									end
								end
								if isZero then
									IgnoredPlantas[npcNumber] = true;
								else
									local dist = (torso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = torso;
										closestNpcId = npcNumber;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredPlantas);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\120\64\186\51", "\156\159\17\52\214\86\190")]=LUAOBFUSACTOR_DECRYPT_STR_0("\152\230\185\189\238\178\253\237\252\186\182\240\238\206\169\189\191\250\184\252\243\175\233\233\165", "\220\206\143\221"),[LUAOBFUSACTOR_DECRYPT_STR_0("\165\114\35\3\221\194\198", "\178\230\29\77\119\184\172")]=""});
local NpcOrderMago = {186,187,188,189};
local IgnoredMago = {};
local ToggleTPMago = Tab:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\219\191\7\30", "\152\149\222\106\123\23")]=LUAOBFUSACTOR_DECRYPT_STR_0("\252\51\226\76\245\233\22\182\101\176\212\50\255\64\176\212\52\249", "\213\189\70\150\35"),[LUAOBFUSACTOR_DECRYPT_STR_0("\108\64\102\26\74\91\96\62\78\89\97\13", "\104\47\53\20")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\64\128\27", "\111\195\44\225\124\220")]=LUAOBFUSACTOR_DECRYPT_STR_0("\249\83\20\124\141\170\202\75\46\67\136\134\217\65\15", "\203\184\38\96\19\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\26\114\117\77\204\56\112\114", "\174\89\19\25\33")]=function(Value)
	_G.AutoFarmNPCMago = Value;
	if not Value then
		table.clear(IgnoredMago);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCMago do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\7\7\95\79\249\136\2\43\32\93\65\227\183\10\61\6", "\107\79\114\50\46\151\231"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\23\182\182\58", "\160\89\198\213\73\234\89\215"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderMago) do
					if not IgnoredMago[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\96\100\185\255\203\71\120\176\204\202\71\101\132\255\215\92", "\165\40\17\212\158"));
							local torso = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\208\201\24\54\52\209\214\26\32\41", "\70\133\185\104\83"));
							if (npcHRP and torso) then
								local isZero = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\38\76\72\38\203\11\68\86\46\238\17\76", "\169\100\37\36\74"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\52\130\186\68\44\134\160\85\12", "\48\96\231\194")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\251\78\23\33\16\194\170\135\228\91\12\40\21", "\227\168\58\110\77\121\184\207"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\43\115\238\16\225\240", "\197\27\92\223\32\209\187\17")) then
												isZero = true;
											end
											break;
										end
									end
								end
								if isZero then
									IgnoredMago[npcNumber] = true;
								else
									local dist = (torso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = torso;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredMago);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\55\86\215\247\6", "\155\99\63\163")]=LUAOBFUSACTOR_DECRYPT_STR_0("\180\216\165\140\249\217\194\128\241\221\178\200\194\240\181\140\168\145\135\145\252\205\232\209\210\218", "\228\226\177\193\237\217"),[LUAOBFUSACTOR_DECRYPT_STR_0("\23\191\45\242\49\190\55", "\134\84\208\67")]=""});
local NpcOrderEspartano = {190,191,192,193,194,196,197};
local IgnoredEspartano = {};
local ToggleTPEspartano = Tab:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\61\173\139\89", "\60\115\204\230")]=LUAOBFUSACTOR_DECRYPT_STR_0("\198\47\255\127\167\14\219\48\194\41\251\113\245\46\234\126\232", "\16\135\90\139"),[LUAOBFUSACTOR_DECRYPT_STR_0("\119\97\20\33\75\90\108\98\117\10\38\75", "\24\52\20\102\83\46\52")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\226\35\32\35", "\111\164\79\65\68")]=LUAOBFUSACTOR_DECRYPT_STR_0("\231\204\151\209\8\235\212\212\173\238\13\207\213\201\130\204\58\235\200\214", "\138\166\185\227\190\78"),[LUAOBFUSACTOR_DECRYPT_STR_0("\232\117\201\59\80\34\26\192", "\121\171\20\165\87\50\67")]=function(Value)
	_G.AutoFarmNPCEspartano = Value;
	if not Value then
		table.clear(IgnoredEspartano);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCEspartano do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\238\45\180\55\183\13\207\60\139\57\182\22\246\57\171\34", "\98\166\88\217\86\217"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\216\230\122\18", "\188\150\150\25\97\230"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderEspartano) do
					if not IgnoredEspartano[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\242\156\82\3\2\226\211\141\109\13\3\249\234\136\77\22", "\141\186\233\63\98\108"));
							local torso = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\197\229\62\165\42", "\69\145\138\76\214"));
							if (npcHRP and torso) then
								local isZero = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\82\198\133\133\189\25\113\221\141\174\170\31", "\118\16\175\233\233\223"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\191\129\45\175\194\138\127\142\136", "\29\235\228\85\219\142\235")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\14\192\163\209\126\84\34\86\17\213\184\216\123", "\50\93\180\218\189\23\46\71"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\142\235\9\25\20\247", "\40\190\196\59\44\36\188")) then
												isZero = true;
											end
											break;
										end
									end
								end
								if isZero then
									IgnoredEspartano[npcNumber] = true;
								else
									local dist = (torso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = torso;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredEspartano);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\8\76\200\184\255", "\109\92\37\188\212\154\29")]=LUAOBFUSACTOR_DECRYPT_STR_0("\50\230\160\194\113\7\68\189\241\147\58\22\68\206\176\194\32\79\1\175\249\131\96\10\84\228", "\58\100\143\196\163\81"),[LUAOBFUSACTOR_DECRYPT_STR_0("\57\77\45\183\58\71\241", "\110\122\34\67\195\95\41\133")]=""});
local Tab2 = Window:CreateTab("Céu", 4483362458);
local Button = Tab2:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\91\176\86\79", "\182\21\209\59\42")]="TP pro céu",[LUAOBFUSACTOR_DECRYPT_STR_0("\148\86\201\17\35\191\180\92", "\222\215\55\165\125\65")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(629, 384, -1474);
end});
local Section = Tab2:CreateSection(LUAOBFUSACTOR_DECRYPT_STR_0("\10\208\212\23", "\42\76\177\166\122\146\161\141"));
local NpcOrderCeifador = {102,103,143,144,145,146,95,96,97};
local IgnoredCeifador = {};
local ToggleTPCeifador = Tab2:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\139\139\8\203", "\22\197\234\101\174\25")]=LUAOBFUSACTOR_DECRYPT_STR_0("\12\33\177\211\54\155\231\198\14\49\172\218\119\171\216\148", "\230\77\84\197\188\22\207\183"),[LUAOBFUSACTOR_DECRYPT_STR_0("\218\1\212\238\137\175\228\3\248\24\211\249", "\85\153\116\166\156\236\193\144")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\130\236\76\180", "\96\196\128\45\211\132")]=LUAOBFUSACTOR_DECRYPT_STR_0("\20\152\111\80\244\174\166\213\27\189\88\124\215\166\178\217\49\130\105", "\184\85\237\27\63\178\207\212"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\88\5\83\10\88\10\84", "\63\104\57\105")]=function(Value)
	_G.AutoFarmNPCCeifador = Value;
	if not Value then
		table.clear(IgnoredCeifador);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCCeifador do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\35\146\169\69\5\136\173\64\57\136\171\80\59\134\182\80", "\36\107\231\196"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\115\165\161\148", "\231\61\213\194"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderCeifador) do
					if not IgnoredCeifador[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\33\184\48\114\7\162\52\119\59\162\50\103\57\172\47\103", "\19\105\205\93"));
							local torso = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\157\7\204\146\48", "\95\201\104\190\225"));
							if (npcHRP and torso) then
								local finished = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\141\194\205\194\173\196\192\220\171\236\212\199", "\174\207\171\161"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\217\251\21\231\212\214\239\251\1", "\183\141\158\109\147\152")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\31\29\255\0\37\19\227\8\0\8\228\9\32", "\108\76\105\134"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\187\138\230\180\158\192", "\174\139\165\209\129")) then
												finished = true;
											end
											break;
										end
									end
								end
								if finished then
									IgnoredCeifador[npcNumber] = true;
								else
									local dist = (torso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = torso;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredCeifador);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab2:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\151\186\246\205\195", "\24\195\211\130\161\166\99\16")]=LUAOBFUSACTOR_DECRYPT_STR_0("\112\10\237\45\19\75\6\84\188\124\88\90\6\34\253\45\66\3\67\67\180\108\7\70\22\8", "\118\38\99\137\76\51"),[LUAOBFUSACTOR_DECRYPT_STR_0("\222\41\11\6\12\46\233", "\64\157\70\101\114\105")]=""});
local NpcOrderAnjo = {100,101,141,142,147,148,98,99};
local IgnoredAnjo = {};
local ToggleTPAnjo = Tab2:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\110\169\170\230", "\112\32\200\199\131")]=LUAOBFUSACTOR_DECRYPT_STR_0("\13\69\72\183\131\159\18\108\113\82\178\204", "\66\76\48\60\216\163\203"),[LUAOBFUSACTOR_DECRYPT_STR_0("\153\147\107\225\90\192\48\140\135\117\230\90", "\68\218\230\25\147\63\174")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\139\38\82\75", "\214\205\74\51\44")]=LUAOBFUSACTOR_DECRYPT_STR_0("\219\89\246\243\81\251\94\239\210\71\217\109\236\246\120", "\23\154\44\130\156"),[LUAOBFUSACTOR_DECRYPT_STR_0("\50\167\161\162\52\18\18\173", "\115\113\198\205\206\86")]=function(Value)
	_G.AutoFarmNPCAnjo = Value;
	if not Value then
		table.clear(IgnoredAnjo);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCAnjo do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\172\66\243\91\138\88\247\94\182\88\241\78\180\86\236\78", "\58\228\55\158"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\154\153\211\61", "\85\212\233\176\78\92\205"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderAnjo) do
					if not IgnoredAnjo[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\98\77\133\227\68\87\129\230\120\87\135\246\122\89\154\246", "\130\42\56\232"));
							local torso = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\223\165\52\230\82\11\229\167\55\236", "\95\138\213\68\131\32"));
							if (npcHRP and torso) then
								local finished = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\8\33\173\79\116\37\41\179\71\81\63\33", "\22\74\72\193\35"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\24\124\252\76\0\120\230\93\32", "\56\76\25\132")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\109\213\178\42\198\68\196\175\10\206\92\196\167", "\175\62\161\203\70"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\108\146\146\93\96\17", "\85\92\189\163\115")) then
												finished = true;
											end
											break;
										end
									end
								end
								if finished then
									IgnoredAnjo[npcNumber] = true;
								else
									local dist = (torso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = torso;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredAnjo);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab2:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\29\165\36\52\44", "\88\73\204\80")]=LUAOBFUSACTOR_DECRYPT_STR_0("\24\138\20\71\105\135\110\210\94\19\4\150\110\162\4\71\56\207\43\195\77\6\124\138\126\136", "\186\78\227\112\38\73"),[LUAOBFUSACTOR_DECRYPT_STR_0("\223\88\243\65\86\116\232", "\26\156\55\157\53\51")]=""});
local Tab3 = Window:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\173\202\19\208\185", "\48\236\184\118\185\216"), 4483362458);
local Button = Tab3:CreateButton({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\188\90\53", "\84\133\221\55\80\175")]=LUAOBFUSACTOR_DECRYPT_STR_0("\137\215\100\182\213\93\253\198\54\163\206\93", "\60\221\135\68\198\167"),[LUAOBFUSACTOR_DECRYPT_STR_0("\205\188\244\143\64\216\237\182", "\185\142\221\152\227\34")]=function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(630, 41, -3046);
end});
local Section = Tab3:CreateSection(LUAOBFUSACTOR_DECRYPT_STR_0("\126\196\69\247", "\151\56\165\55\154\35\83"));
local NpcOrderCowboy = {104,105,106,107,108,109};
local IgnoredCowboy = {};
local ToggleTPCowboy = Tab3:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\142\66\8\235", "\142\192\35\101")]=LUAOBFUSACTOR_DECRYPT_STR_0("\247\96\61\172\167\184\156\86\245\122\62\161\232\149", "\118\182\21\73\195\135\236\204"),[LUAOBFUSACTOR_DECRYPT_STR_0("\43\41\8\82\1\3\233\62\61\22\85\1", "\157\104\92\122\32\100\109")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\133\170\206\205", "\203\195\198\175\170\93\71\237")]=LUAOBFUSACTOR_DECRYPT_STR_0("\15\94\42\218\119\16\238\35\101\14\246\114\30\235\44\68\39", "\156\78\43\94\181\49\113"),[LUAOBFUSACTOR_DECRYPT_STR_0("\81\233\200\175\9\66\122\121", "\25\18\136\164\195\107\35")]=function(Value)
	_G.AutoFarmNPCCowboy = Value;
	if not Value then
		table.clear(IgnoredCowboy);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCCowboy do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\192\56\164\78\124\179\200\188\218\34\166\91\66\189\211\172", "\216\136\77\201\47\18\220\161"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\3\252\40\201", "\226\77\140\75\186\104\188"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderCowboy) do
					if not IgnoredCowboy[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\145\219\221\62\65\182\199\212\13\64\182\218\224\62\93\173", "\47\217\174\176\95"));
							local torso = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\173\205\102\7\160\64\119\52\171\210", "\70\216\189\22\98\210\52\24"));
							if (npcHRP and torso) then
								local finished = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\248\214\175\139\209\213\222\177\131\244\207\214", "\179\186\191\195\231"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\205\58\0\240\213\62\26\225\245", "\132\153\95\120")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\130\166\23\33\254\192\165\181\158\15\47\242\214", "\192\209\210\110\77\151\186"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\176\76\115\188\210", "\164\128\99\66\137\159")) then
												finished = true;
											end
											break;
										end
									end
								end
								if finished then
									IgnoredCowboy[npcNumber] = true;
								else
									local dist = (torso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = torso;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredCowboy);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab3:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\52\128\253\178\5", "\222\96\233\137")]=LUAOBFUSACTOR_DECRYPT_STR_0("\143\186\163\30\200\174\176\232\230\138\83\200\210\228\184\162\178\26\200\174\176\238\158", "\144\217\211\199\127\232\147"),[LUAOBFUSACTOR_DECRYPT_STR_0("\219\32\48\60\208\75\22", "\36\152\79\94\72\181\37\98")]=""});
local NpcOrderFantasma = {1,110,111,112,113,114,115,117,120,121,152,153,154,155,158,159};
local IgnoredFantasma = {};
local ToggleTPFantasma = Tab3:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\249\217\74\58", "\95\183\184\39")]=LUAOBFUSACTOR_DECRYPT_STR_0("\148\42\243\41\20\180\50\245\25\230\40\64\129\17\184\62", "\98\213\95\135\70\52\224"),[LUAOBFUSACTOR_DECRYPT_STR_0("\221\182\219\101\81\240\183\255\118\88\235\166", "\52\158\195\169\23")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\92\176\51\115", "\235\26\220\82\20\230\85\27")]=LUAOBFUSACTOR_DECRYPT_STR_0("\169\180\253\205\82\137\179\228\236\68\171\135\232\204\96\137\178\228\195", "\20\232\193\137\162"),[LUAOBFUSACTOR_DECRYPT_STR_0("\1\222\201\170\229\141\20\122", "\17\66\191\165\198\135\236\119")]=function(Value)
	_G.AutoFarmNPCFantasma = Value;
	if not Value then
		table.clear(IgnoredFantasma);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCFantasma do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\39\186\163\18\241\231\229\213\61\160\161\7\207\233\254\197", "\177\111\207\206\115\159\136\140"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\43\153\19\7", "\63\101\233\112\116\180\47"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderFantasma) do
					if not IgnoredFantasma[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\235\46\224\19\246\57\202\63\223\29\247\34\243\58\255\6", "\86\163\91\141\114\152"));
							local torso = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\127\90", "\90\51\107\20\19"));
							if (npcHRP and torso) then
								local finished = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\175\249\137\227\63\130\241\151\235\26\152\249", "\93\237\144\229\143"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\33\243\232\13\39\71\23\243\252", "\38\117\150\144\121\107")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\30\175\247\54\36\161\235\62\1\186\236\63\33", "\90\77\219\142"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\182\75\119\105\97", "\26\134\100\65\89\44\103")) then
												finished = true;
											end
											break;
										end
									end
								end
								if finished then
									IgnoredFantasma[npcNumber] = true;
								else
									local dist = (torso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = torso;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredFantasma);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab3:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\197\234\36\47\161", "\196\145\131\80\67")]=LUAOBFUSACTOR_DECRYPT_STR_0("\40\185\2\9\88\181\94\230\86\37\84\168\63\164\7\25\13\237\94\237\70\91\77\197", "\136\126\208\102\104\120"),[LUAOBFUSACTOR_DECRYPT_STR_0("\91\133\192\87\170\92\41", "\49\24\234\174\35\207\50\93")]=""});
local NpcOrderVigiadototem = {118,119,122,123,124,125,126,127,128,129,156,157};
local IgnoredVigiadototem = {};
local ToggleTPVigiadototem = Tab3:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\34\243\240\141", "\17\108\146\157\232")]=LUAOBFUSACTOR_DECRYPT_STR_0("\106\214\0\226\111\156\123\131\34\228\40\161\74\131\16\226\111\156\68\215\17\224", "\200\43\163\116\141\79"),[LUAOBFUSACTOR_DECRYPT_STR_0("\156\35\47\145\181\250\247\137\55\49\150\181", "\131\223\86\93\227\208\148")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\197\73\183\177", "\213\131\37\214\214\125")]=LUAOBFUSACTOR_DECRYPT_STR_0("\7\62\49\176\199\39\57\40\145\209\5\29\44\184\232\39\47\42\171\238\50\46\40", "\129\70\75\69\223"),[LUAOBFUSACTOR_DECRYPT_STR_0("\101\202\255\229\126\238\69\192", "\143\38\171\147\137\28")]=function(Value)
	_G.AutoFarmNPCVigiadototem = Value;
	if not Value then
		table.clear(IgnoredVigiadototem);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCVigiadototem do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\248\151\180\242\13\236\221\212\176\182\252\23\211\213\194\150", "\180\176\226\217\147\99\131"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\253\169\44\20", "\103\179\217\79"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderVigiadototem) do
					if not IgnoredVigiadototem[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\98\162\17\212\79\131\170\78\133\19\218\85\188\162\88\163", "\195\42\215\124\181\33\236"));
							local torso = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\24\73\39\59\55\236\2\75\36\49", "\152\109\57\87\94\69"));
							if (npcHRP and torso) then
								local finished = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\219\222\6\175\188\221\85\186\253\240\31\170", "\200\153\183\106\195\222\178\52"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\6\230\144\41\101\91\48\230\132", "\58\82\131\232\93\41")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\176\67\201\25\84\37\134\83\252\20\95\58\143", "\95\227\55\176\117\61"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\72\49\113\30\251\53", "\203\120\30\67\43")) then
												finished = true;
											end
											break;
										end
									end
								end
								if finished then
									IgnoredVigiadototem[npcNumber] = true;
								else
									local dist = (torso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = torso;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredVigiadototem);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab3:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\197\44\89\227\220", "\185\145\69\45\143")]=LUAOBFUSACTOR_DECRYPT_STR_0("\188\22\29\167\156\215\95\75\243\140\167\83\89\135\200\139\14\12\163\156\215\95\76\246\241", "\188\234\127\121\198"),[LUAOBFUSACTOR_DECRYPT_STR_0("\27\61\29\151\61\60\7", "\227\88\82\115")]=""});
local NpcOrderMumia = {131,132,133,134,135,136,137,138,160,161,162,163};
local IgnoredMumia = {};
local ToggleTPMumia = Tab3:CreateToggle({[LUAOBFUSACTOR_DECRYPT_STR_0("\109\30\183\162", "\19\35\127\218\199\98")]=LUAOBFUSACTOR_DECRYPT_STR_0("\61\238\30\237\92\207\58\162\49\238\7\235\29", "\130\124\155\106"),[LUAOBFUSACTOR_DECRYPT_STR_0("\246\222\228\189\166\248\104\137\212\199\227\170", "\223\181\171\150\207\195\150\28")]=false,[LUAOBFUSACTOR_DECRYPT_STR_0("\106\54\226\169", "\105\44\90\131\206")]=LUAOBFUSACTOR_DECRYPT_STR_0("\222\245\166\182\46\63\237\237\156\137\43\19\234\237\187\184", "\94\159\128\210\217\104"),[LUAOBFUSACTOR_DECRYPT_STR_0("\115\248\10\179\93\126\250\113", "\26\48\153\102\223\63\31\153")]=function(Value)
	_G.AutoFarmNPCMumia = Value;
	if not Value then
		table.clear(IgnoredMumia);
		return;
	end
	task.spawn(function()
		while _G.AutoFarmNPCMumia do
			local char = LocalPlayer.Character;
			local hrp = char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\42\85\224\242\12\79\228\247\48\79\226\231\50\65\255\231", "\147\98\32\141"));
			local npcFolder = workspace:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\54\83\224\217", "\43\120\35\131\170\102\54"));
			if (hrp and npcFolder) then
				local closestTorso;
				local closestDistance = math.huge;
				for _, npcNumber in ipairs(NpcOrderMumia) do
					if not IgnoredMumia[npcNumber] then
						local npc = npcFolder:FindFirstChild(tostring(npcNumber));
						if npc then
							local npcHRP = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\124\19\138\183\171\191\141\80\52\136\185\177\128\133\70\18", "\228\52\102\231\214\197\208"));
							local torso = npc:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\42\239\103\217\229", "\182\126\128\21\170\138\235\121"));
							if (npcHRP and torso) then
								local finished = false;
								local billboard = npcHRP:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\169\211\57\234\132\28\49\20\143\253\32\239", "\102\235\186\85\134\230\115\80"));
								if billboard then
									for _, obj in ipairs(billboard:GetDescendants()) do
										if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\99\9\38\75\94\213\32\82\0", "\66\55\108\94\63\18\180")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\39\153\156\59\46\67\17\137\169\54\37\92\24", "\57\116\237\229\87\71"))) then
											if (obj.Text == LUAOBFUSACTOR_DECRYPT_STR_0("\250\254\184\183\39\195", "\39\202\209\141\135\23\142")) then
												finished = true;
											end
											break;
										end
									end
								end
								if finished then
									IgnoredMumia[npcNumber] = true;
								else
									local dist = (torso.Position - hrp.Position).Magnitude;
									if (dist < closestDistance) then
										closestDistance = dist;
										closestTorso = torso;
									end
								end
							end
						end
					end
				end
				if not closestTorso then
					table.clear(IgnoredMumia);
				else
					hrp.CFrame = closestTorso.CFrame;
				end
			end
			task.wait(0.2);
		end
	end);
end});
local Paragraph = Tab3:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\203\58\29\6\55", "\152\159\83\105\106\82")]=LUAOBFUSACTOR_DECRYPT_STR_0("\183\207\85\243\137\1\193\147\1\162\228\16\193\231\69\243\216\73\132\134\12\178\152\14\212\235", "\60\225\166\49\146\169"),[LUAOBFUSACTOR_DECRYPT_STR_0("\12\17\33\62\4\9\59", "\103\79\126\79\74\97")]=""});
local Tab = Window:CreateTab(LUAOBFUSACTOR_DECRYPT_STR_0("\153\109\214\119\87\14\181\108", "\122\218\31\179\19\62"), 4483362458);
local Paragraph = Tab:CreateParagraph({[LUAOBFUSACTOR_DECRYPT_STR_0("\135\223\217\205\204", "\37\211\182\173\161\169\193")]=LUAOBFUSACTOR_DECRYPT_STR_0("\212\40\68\216\44\116\249\231\53\95\153\42\114\188\251\107\26\136\122\47", "\217\151\90\45\185\72\27"),[LUAOBFUSACTOR_DECRYPT_STR_0("\224\115\233\6\83\205\104", "\54\163\28\135\114")]="Algum erro ou requer atualizações dos scripts? comunica-me em meu discord! Aviso: Se for gravar video com este script, deixe os créditos, agradeço!"});
