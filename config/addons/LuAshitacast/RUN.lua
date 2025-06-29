local settings = {
    tank = false;
	regen = false;
	dps = false;
}

local profile = {};

local settings = {
    Boots = {
        TP = { Name = "Herculean Boots", Augment = { [1] = 'Weapon skill damage +10%', } },
        WS = { Name = "Herculean Boots", Augment = { [1] = 'Weapon skill damage +10%', } },
        -- DexWs = { Name = "Andartia's Mantle", Augment = { [1] = 'DEX+30', [2] = 'Weapon skill damage +10%', } },
        Refresh = { Name = "Herculean Boots", Augment = { [1] = 'Accuracy+4', } },
        Tank = { Name = "Herculean Boots", Augment = { [1] = 'Accuracy+4', } },
		Phalanx = { Name = "Herculean Boots", Augment = { [1] = '"Phalanx" recieved +3', } },
    },
	Capes = {
        TP = { Name = "Ogma's Cape", Augment = { [1] = 'DEX+30', } },
        WS = { Name = "Ogma's Cape", Augment = { [1] = 'DEX+30', } },
        -- DexWs = { Name = "Ogma's Cape", Augment = { [1] = 'DEX+30', [2] = 'Weapon skill damage +10%', } },
        Idle = { Name = "Ogma's Cape", Augment = { [1] = 'HP+60', } },
        Tank = { Name = "Ogma's Cape", Augment = { [1] = 'HP+60', } },
		FC = { Name = "Ogma's Cape", Augment = { [1] = '"Fast Cast"+10', } },
		-- Nuke = { Name = "Ogma's Cape", Augment = { [1] = 'AGI+20', [2] = 'Fast Cast+10', } },
    },
}

local sets = {
    ['Idle'] = {
		Ammo = 'Staunch Tathlum +1',
        Head = 'Nyame Helm',
		Neck = "Sanctity Necklace",
        Ear1 = 'Cryptic Earring',
        Ear2 = 'Tuisto Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Ilabrat Ring',
        Ring2 = 'Defending Ring',
        Back = settings.Capes.Tank,
		Waist = "Sailfi Belt +1",
        Legs = 'Carmine Cuisses +1',
        Feet = 'Nyame Sollerets',
    },
    ['Hybrid'] = {
		Ammo = 'Seeth. Bomblet +1',
        Head = 'Adhemar Bonnet +1',
		Neck = "Anu Torque",
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Nyame Mail',
        Hands = 'Turms Mittens +1',
        Ring1 = 'Ilabrat Ring',
        Ring2 = 'Defending Ring',
        Back = settings.Capes.TP,
		Waist = "Sailfi Belt +1",
        Legs = 'Meg. Chausses +2',
        Feet = 'Erilaz Greaves +3',
    },
	['WS'] = {
		Ammo = 'Knobkierrie',
        Head = 'Adhemar Bonnet +1',
		Neck = "Acantha Torque",
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Adhemar Jacket +1',
        Hands = 'Adhemar Wrist. +1',
        Ring1 = 'Ilabrat Ring',
        Ring2 = 'Rajas Ring',
        Back = settings.Capes.WS,
		Waist = "Fotia Belt",
        Legs = 'Meg. Chausses +2',
        Feet = settings.Boots.WS,
    },
	['Enmity'] = {
		Ammo = 'Staunch Tathlum +1',
        Head = 'Rabid Visor',
		Neck = "Futhark Torque +1",
        -- Ear1 = 'Magnetic Earring',
        Ear2 = 'Cryptic Earring',
        Body = 'Emet Harness +1',
        Hands = 'Erilaz Gauntlets',
        Ring1 = 'Begrudging Ring',
        Ring2 = 'Defending Ring',
        Back = settings.Capes.Tank,
		Waist = "Trance Belt",		
        Legs = 'Eri. Leg Guards +3',
        Feet = 'Erilaz Greaves +3',
    },
	['FC'] = {
		-- Ammo = "",
		Head = 'Rune. Bandeau +1',
		-- Neck = "Futhark Torque +1",
        -- Ear1 = 'Magnetic Earring',
       --  Ear2 = 'Cryptic Earring',
        -- Body = 'Emet Harness +1',
        -- Hands = 'Erilaz Gauntlets',
        -- Ring1 = 'Karieyh Ring',
        -- Ring2 = 'Vengeful Ring',
        Back = settings.Capes.FC,
		-- Waist = "Trance Belt",		
        Legs = 'Limbo Trousers',
        Feet = 'Carmine Greaves +1',
    },
	['SIRD'] = {
		Ammo = "Staunch Tathlum +1",
		Head = 'Erilaz Galea +2',
		-- Neck = "Moonlight Necklace",
        Ear1 = 'Magnetic Earring',
        -- Ear2 = 'Halasz Earring',
        Body = 'Nyame Mail',
        Hands = 'Rawhide Gloves',
        -- Ring1 = 'Gelatenous Ring +1',
        Ring2 = 'Defending Ring',
        -- Back = settings.Capes.Tank,
		Waist = "Audumbia Sash",		
        Legs = 'Carmine Cuisses +1',
        Feet = 'Erilaz Greaves +3',
    },
	['Enhancing'] = {
		-- Ammo = "Staunch Tathlum +1",
		Head = 'Erilaz Galea +2',
		-- Neck = "Moonlight Necklace",
        -- Ear1 = 'Magnetic Earring',
        Ear2 = 'Mimir Earring',
        -- Body = 'Emet Harness +1',
        Hands = 'Runeist Mitons +1',
        -- Ring1 = 'Gelatenous Ring +1',
        Ring2 = 'Defending Ring',
        Back = 'Merciful Cape',
		-- Waist = "Audumbia Sash",		
        Legs = 'Carmine Cuisses +1',
        -- Feet = 'Erilaz Greaves +3',
    },
	['Divine'] = {
		-- Ammo = "Staunch Tathlum +1",
		Head = 'Erilaz Galea +2',
		-- Neck = "Moonlight Necklace",
        -- Ear1 = 'Magnetic Earring',
        Ear2 = 'Saxnot Earring',
        -- Body = 'Emet Harness +1',
        -- Hands = 'Rawhide Gloves',
        -- Ring1 = 'Gelatenous Ring +1',
        Ring2 = 'Defending Ring',
        Back = 'Altruistic Cape',
		-- Waist = "Audumbia Sash",		
        Legs = 'Runeist Trousers',
        -- Feet = 'Erilaz Greaves +3',
    },
	['Tank'] = {
        Main = 'Aettir',
		Ammo = 'Staunch Tathlum +1',
        Head = 'Nyame Helm',
		Neck = "Warder's Charm +1",
        Ear1 = 'Tuisto Earring',
        Ear2 = 'Erilaz Earring',
        Body = 'Runeist Coat +3',
        Hands = 'Turms Mittens +1',
        Ring1 = 'Ilabrat Ring',
        Ring2 = 'Defending Ring',
        Back = settings.Capes.Tank,
		Waist = "Sailfi Belt +1",		
        Legs = 'Eri. Leg Guards +3',
        Feet = 'Erilaz Greaves +3',
    },
	['DPS'] = {
		Ammo = 'Seeth. Bomblet +1',
        Head = 'Adhemar Bonnet +1',
		Neck = "Anu Torque",
        Ear1 = 'Cessance Earring',
        Ear2 = 'Brutal Earring',
        Body = 'Adhemar Jacket +1',
        Hands = 'Adhemar Wrist. +1',
        Ring1 = 'Ilabrat Ring',
        Ring2 = 'Rajas Ring',
        Back = settings.Capes.TP,
		Waist = "Sailfi Belt +1",
        Legs = 'Meg. Chausses +2',
        Feet = settings.Boots.TP,
    },
	['Regen'] = {
        Head = 'Rune. Bandeau +1',
		-- Neck = "Warder's Charm +1",
        Ear2 = 'Erilaz Earring',
        -- Body = 'Runeist Coat +3',
        -- Hands = 'Turms Mittens +1',
		Waist = "Sroda Belt",		
        Legs = 'Futhark Trousers',
        -- Feet = 'Erilaz Greaves +3',
    },
	['MAB'] = {
		-- Ammo = "Pemphredo Tathlum",
		-- Head = 'Agwu's Cap',
		-- Neck = "Baetyl Pendant",
        Ear1 = 'Hermetic Earring',
        -- Ear2 = 'Friomisi Earring',
        -- Body = 'Agwu's Robe',
        -- Hands = 'Agwu's Gages',
        -- Ring1 = 'Shiva Ring +1',
        -- Ring2 = 'Shiva Ring +1',
        -- Back = 'settings.Capes.',
		-- Waist = "Orpheus's Sash",		
        -- Legs = 'Agwu's Slops',
        -- Feet = 'Agwu's Pigaches',
    },
};
profile.Sets = sets;

profile.Packer = {
};

profile.OnLoad = function()
    gSettings.AllowAddSet = true;
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /tank /lac fwd tank_mode');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /regen /lac fwd regen_mode');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias /dps /lac fwd dps_mode');
end

profile.OnUnload = function()
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /tank');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /regen');
	AshitaCore:GetChatManager():QueueCommand(-1, '/alias delete /dps');
end

profile.HandleCommand = function(args)
	if args[1] == 'tank_mode' then
		settings.tank = not settings.tank;
	elseif args[1] == 'regen_mode' then
		settings.regen = not settings.regen;
	elseif args[1] == 'dps_mode' then
		settings.dps = not settings.dps;	
	end	
end

profile.HandleDefault = function()
	local player = gData.GetPlayer()
	local env = gData.GetEnvironment()
	local reive = gData.GetBuffCount('Reive Mark')
	
	if (player.Status == 'Engaged') then
		gFunc.EquipSet(sets.Hybrid);
	elseif (player.Status == 'Resting') then
		gFunc.EquipSet(sets.Rest);
	else
		gFunc.EquipSet(sets.Idle);
	end
	
	if settings.tank == true then
		gFunc.EquipSet(sets.Tank);
	elseif settings.regen == true then
		gFunc.EquipSet(sets.Regen)
	elseif settings.dps == true then
		gFunc.EquipSet(sets.DPS)
	end
	
	if reive > 0 then
		gFunc.Equip('Neck', "Ygnas's Resolve +1")
	end
	
	if env.Area == "Eastern Adoulin"
		or env.Area == "Western Adoulin" then
			gFunc.Equip('Body', "Councilor's Garb")
    end

end

profile.HandleAbility = function()
	local ability = gData.GetAction()
	
	gFunc.EquipSet(sets.Tank);
	
	if ability.Name == 'Weapon Bash'
	or ability.Name == 'Pflug'
	or ability.Name == 'Gambit'
	or ability.Name == 'Rayke'
	or ability.Name == 'Battuta'
	or ability.Name == 'Liement'
	or ability.Name == 'One For All'
	or ability.Name == 'Elemental Sforzo'
	or ability.Name == 'Embolden'
	or ability.Name == 'Swordplay'
	or ability.Name == 'Souleater'
	or ability.Name == 'Last Resort' then
		gFunc.EquipSet(sets.Enmity);
    end

    if ability.Name == 'Valiance'
	or ability.Name == 'Vallation' then
		gFunc.EquipSet(sets.Enmity);
        gFunc.Equip('Body', "Runeist Coat +3")
    end
	
	if ability.Name == 'Vivacious Pulse' then
		gFunc.EquipSet(sets.Divine);
    end
	
	if ability.Name == 'Swipe'
	or ability.Name == 'Lunge' then
		gFunc.EquipSet(sets.MAB);
    end
	
end

profile.HandleItem = function()
end

profile.HandlePrecast = function()
	gFunc.EquipSet(sets.FC);
end

profile.HandleMidcast = function()
local spell = gData.GetAction()
	
	gFunc.EquipSet(sets.SIRD);
	
	if spell.Name == 'Foil'
	or spell.Name == 'Flash'
	or spell.Name == 'Stun' then
		gFunc.EquipSet(sets.Enmity);
	end
	
	if spell.Name == 'Refresh'
	or spell.Name == 'Temper'
	or spell.Name == 'Shock Spikes'
	or spell.Name == 'Ice Spikes'
	or spell.Name == 'Blaze Spikes'
	or spell.Name == 'Blink'
	or spell.Name == 'Crusade'
	or spell.Name == 'Aquaveil'
	or spell.Name:match('Bar') then
		gFunc.EquipSet(sets.Enhancing)
	end
	
	if spell.Name == 'Phalanx' then
		gFunc.EquipSet(sets.Enhancing)
		gFunc.Equip('Feet', settings.Boots.Phalanx)
		gFunc.Equip('Head', "Fu. Bandeau +3")
	end
	
	if spell.Name == 'Regen IV' then
		gFunc.EquipSet(sets.Enhancing)
		gFunc.EquipSet(sets.Regen);
	end
	
	if spell.Name == 'Stoneskin' then
		gFunc.EquipSet(sets.Enhancing)
		gFunc.Equip('Waist', "Siegel Sash")
	end
	
end

profile.HandlePreshot = function()
end

profile.HandleMidshot = function()
end

profile.HandleWeaponskill = function()
	gFunc.EquipSet(sets.WS);
	
end

return profile;