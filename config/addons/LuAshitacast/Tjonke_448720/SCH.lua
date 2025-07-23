local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
    Idle = {
        Main = 'Musa',
        Sub = 'Khonsu',
        Ammo = 'Homiliary',
        Head = 'Null Masque',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Halasz Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Jhakri Robe +2',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = 'Moonlight Cape',
        Waist = 'Plat. Mog. Belt',
        Legs = 'Assid. Pants +1',
        Feet = 'Nyame Sollerets',
    },
    Idle_Staff = {
        Main = 'Musa',
        Sub = 'Khonsu',
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'Elite Royal Collar',
        Ear1 = 'Infused Earring',
        Ring1 = 'Chirich Ring +1',
		Ring2 = 'Chirich Ring +1',
    },
    Idle_Refresh = {
        Ammo = 'Homiliary',
        Head = 'Null Masque',
        Ring1 = 'Stikini Ring +1',
		Ring2 = 'Stikini Ring +1',
        Waist = 'Fucho-no-Obi',
        Legs = 'Assid. Pants +1',
    },
    Town = {
        Main = 'Musa',
        Sub = 'Khonsu',
        Ammo = 'Homiliary',
        Head = 'Peda. M.Board +3',
        Neck = 'Elite Royal Collar',
        Body = 'Arbatel Gown +2',
        Hands = 'Agwu\'s Gages',
        Back = 'Moonlight Cape',
        Legs = 'Arbatel Pants +2',
        Feet = 'Agwu\'s Pigaches',
		Ring2 = 'Shneddick Ring +1',
		Ring1 = 'Defending Ring',
		Waist = 'Fucho-no-Obi',
		Ear2 = 'Arbatel Earring +1',
		Ear1 = 'Etiolation Earring',
    },

    Dt = {
        Main = 'Musa',
		Sub = 'Khonsu',
		Ammo = 'Staunch Tathlum +1',
        Head = 'Null Masque',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Halasz Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Moonlight Cape',
        Waist = 'Plat. Mog. Belt',
        Legs = 'Arbatel Pants +2',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
        Ammo = 'Jukukik Feather',
        Head = 'Null Masque',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Telos Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Chirich Ring +1',
        Ring2 = 'Petrov Ring',
        Back = 'Null Shawl',
        Waist = 'Cornelia\'s Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Tp_Hybrid = {
    },
    Tp_Acc = {
        Waist = 'Null Belt',
		Ring1 = 'Chirich Ring +1',
        Ring2 = 'Chirich Ring +1',
    },


    Precast = { --85%
        Main = 'Musa', --10
		Sub = 'Khonsu',
		Ammo = 'Incantor Stone', --2
		Head = 'Peda. M.Board +3', --13
        Neck = 'Voltsurge Torque', --4
        Ear2 = 'Etiolation Earring', --1
        Ear1 = 'Malignance Earring', --4
        Body = 'Agwu\'s Robe', --8
        Hands = 'Acad. Bracers +2', --7
        Ring2 = 'Medada\'s Ring', --10
		Ring1 = 'Kishar Ring', --
        Back = 'Fi Follet Cape +1', --6
        Waist = 'Embla Sash', --5
        Legs = 'Agwu\'s Slops', --7
        Feet = 'Acad. Loafers +2', --10
    },
    Cure_Precast = {
        Ear1 = 'Mendi. Earring',
        Feet = 'Vanya Clogs',
		Body = 'Vanya Robe',
		Legs = 'Kaykaus Tights +1',--11
		Hands = 'Vanya Cuffs',
		Head = 'Vanya Hood',
		Back = 'Disperser\'s Cape',
    },
    Enhancing_Precast = {
        Waist = 'Siegel Sash',
    },
    Stoneskin_Precast = {
        Head = 'Umuthi Hat',
        Hands = 'Carapacho Cuffs',
        Waist = 'Siegel Sash',
    },


    Cure = {--I cap is 50, II cap is 30
        Main = 'Musa',--I 30
        Sub = 'Khonsu',
        Ammo = 'Ombre Tathlum +1',
        Head = 'Vanya Hood',
		Body = 'Kaykaus Bliaut +1',
		Neck = 'Incanter\'s Torque',--I 5
        Ear1 = 'Mendi. Earring',--I 5
        Ear2 = 'Etiolation Earring',
        Hands = 'Kaykaus Cuffs +1',
        Ring1 = 'Mephitas\'s Ring +1',
        Ring2 = 'Lebeche Ring',
        Back = 'Fi Follet Cape +1',--I 7
        Waist = 'Shinjutsu-no-Obi +1',
        Legs = 'Kaykaus Tights +1',--11
        Feet = 'Vanya Clogs',--I 10
    },
    Self_Cure = {--cap 30
        Waist = 'Gishdubar Sash',
	},
    Regen = {
        Main = 'Musa',
        Sub = 'Khonsu',
        Head = 'Arbatel Bonnet +2',
        Body = { Name = 'Telchine Chas.', Augment = { [1] = 'Pet: "Regen"+3', [2] = '"Regen" potency+3' } },
        Back = { Name = 'Bookworm\'s Cape', Augment = { [1] = '"Regen" potency+10', [2] = 'MND+1', [3] = 'INT+2' } },
        Waist = 'Embla Sash',
        -- Hands = { Name = 'Telchine Gloves', Augment = '"Regen" potency+3' },
		Hands = 'Arbatel Bracers +2',
        Legs = { Name = 'Telchine Braconi', Augment = '"Regen" potency+3' },
        Feet = { Name = 'Telchine Pigaches', Augment = { [1] = '"Regen" potency+3', [2] = '"Regen"+2' } },
    },
	Cursna = {
        Head = 'Vanya Hood',
		Body = 'Vanya Robe',
		Ring1 = 'Haoma\'s Ring', --15
		Ring2 = 'Haoma\'s Ring', --15
		Waist = 'Gishdubar Sash', --10
		Hands = 'Vanya Cuffs',
		Legs = 'Vanya Slops',
		Feet = 'Vanya Clogs', --5
		Neck = 'Debilis Medallion', --15
		Back = 'Oretan. Cape +1', --5
    },
		Self_Cursna = {
		Ring1 = 'Haoma\'s Ring', --15
		Ring2 = 'Haoma\'s Ring', --15
		Feet = 'Vanya Clogs', --5
		Neck = 'Nicander\'s Necklace', --20
		Back = 'Oretan. Cape +1', --5
	},	
		
    Enhancing = {
        Main = 'Musa',
        Sub = 'Khonsu',
        Ammo = 'Quartz Tathlum +1',
        Head = 'Telchine Cap',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Body = 'Telchine Chas.',
        Hands = 'Arbatel Bracers +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = 'Fi Follet Cape +1',
        Waist = 'Embla Sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Self_Enhancing = {},
    Skill_Enhancing = {},
    Stoneskin = {
        Neck = 'Nodens Gorget',
        Waist = 'Siegel Sash',
    },
    Phalanx = {},
    Refresh = {
		Waist = 'Gishdubar Sash',
    },
    Self_Refresh = {
		Waist = 'Gishdubar Sash',
	},

    Enfeebling = {
        Main = 'Musa',
        Sub = 'Khonsu',
        Ammo = 'Quartz Tathlum +1',
        Head = 'Befouled Crown',
        Neck = 'Null Loop',
        Ear2 = 'Arbatel Earring +1',
        Ear1 = 'Malignance Earring',
        Body = 'Arbatel Gown +2',
        Hands = 'Peda. Bracers +1',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Kishar Ring',
        Back = 'Null Shawl',
        Waist = 'Rumination Sash',
        Legs = 'Arbatel Pants +2',
        Feet = 'Acad. Loafers +2',
    },

    Drain = {
        Main = 'Musa',
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Pixie Hairpin +1',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Malignance Earring',
        Ear2 = 'Arbatel Earring +1',
        Body = 'Acad. Gown +3',
        Hands = 'Acad. Bracers +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Evanescence Ring',
        Back = 'Lugh\'s Cape',
        Waist = 'Fucho-no-Obi',
        Legs = 'Peda. Pants +1',
        Feet = 'Agwu\'s Pigaches',
    },

    Nuke = {
        Main = 'Musa',
        Sub = 'Khonsu',
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Peda. M.Board +3',
        Neck = 'Sibyl Scarf',
        Ear2 = 'Arbatel Earring +1',
        Ear1 = 'Malignance Earring',
        Body = 'Arbatel Gown +2',
        Hands = 'Agwu\'s Gages',
        Ring1 = 'Medada\'s Ring',
        Ring2 = 'Jhakri Ring',
        Back = 'Lugh\'s Cape',
        Waist = 'Eschan Stone',
        Legs = 'Agwu\'s Slops',
        Feet = 'Agwu\'s Pigaches',
    },
    NukeACC = {
        Neck = 'Null Loop',
        Waist = 'Null Belt',
		Body = 'Acad. Gown +3',
    },
    Burst = {
        Main = 'Musa', -- 10 and 0
        Sub = 'Khonsu',
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Peda. M.Board +3', -- 0 and 4
        Neck = 'Mizu. Kubikazari', -- 7 and 0
        Body = 'Agwu\'s Robe', -- 10 and 0
        Hands = 'Agwu\'s Gages', -- 0 and 6
        Ring1 = 'Mujin Band', -- 0 and 5
		Ring2 = 'Jhakri Ring',
		Back = 'Lugh\'s Cape',
        Ear1 = 'Malignance Earring',
		Ear2 = 'Arbatel Earring +1',
		Waist = 'Refoccilation Stone',
        Legs = 'Agwu\'s Slops', -- 9 and 0
        Feet = 'Agwu\'s Pigaches', -- 6 and 0
    },
    Helix = {
        Main = 'Musa',
        Sub = 'Khonsu',
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Agwu\'s Cap',
        Neck = 'Null Loop',
        Ear1 = 'Malignance Earring',
        Ear2 = 'Arbatel Earring +1',
        Body = 'Agwu\'s Robe',
        Hands = 'Agwu\'s Gages',
        Ring1 = 'Medada\'s Ring',
        Ring2 = 'Mallquis Ring',
        Back = { Name = 'Bookworm\'s Cape', Augment = { [1] = 'Helix eff. dur. +20', [2] = 'MND+1', [3] = 'INT+5' } },
        Waist = 'Eschan Stone',
        Legs = 'Agwu\'s Slops',
        Feet = 'Agwu\'s Pigaches',
    },
    HelixBurst = {
        Ring1 = 'Medada\'s Ring',
		Ring2 = 'Mujin Band',
        Feet = 'Agwu\'s Pigaches', -- 6 and 0
		Back = { Name = 'Bookworm\'s Cape', Augment = { [1] = 'Helix eff. dur. +20', [2] = 'MND+1', [3] = 'INT+5' } },
    },
    Storm = {
        Feet = 'Peda. Loafers +2',
    },
    Kaustra = {--need to refine this set
        Main = 'Bunzi\'s Rod',
        Sub = 'Culminus',
        Ammo = 'Hydrocera',
        Head = 'Pixie Hairpin +1',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Malignance Earring',
        Ear2 = 'Arbatel Earring +1',
        Body = 'Agwu\'s Robe',
        Hands = 'Agwu\'s Gages',
        Ring1 = 'Stikini Ring +1',--freke ring
        Ring2 = 'Stikini Ring +1',
        Back = 'Lugh\'s Cape',
        Waist = 'Refoccilation Stone',
        Legs = 'Agwu\'s Slops',
        Feet = 'Agwu\'s Pigaches',
    },
    Mp_Body = {Body = 'Seidr Cotehardie',},

    Preshot = {
    },
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Crep. Earring',
    },

    Ws_Default = {
        Head = 'Nyame Helm',
        Neck = 'Sanctity Necklace',
        Ear2 = 'Malignance Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring2 = 'Karieyh Ring +1',
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },
    Mykyr_Default = {
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Pixie Hairpin +1',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Acad. Gown +3',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Sangoma Ring',
        Ring2 = 'Metamor. Ring +1',
        Back = 'Aurist\'s Cape +1',
        Waist = 'Shinjutsu-no-Obi +1',
        Legs = 'Amalric Slops +1',
        Feet = 'Arbatel Loafers +1',
    },
    Mykyr_Hybrid = {
    },
    Mykyr_Acc = {
    },
    Cataclysm_Default = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Pixie Hairpin +1',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Malignance Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Shiva Ring +1',
        Ring2 = 'Karieyh Ring +1',
        Back = 'Lugh\'s Cape',
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Cataclysm_Hybrid = {
    },
    Cataclysm_Acc = {
    },

    Sublimation = {
        Head = 'Acad. Mortar. +3',
        Body = 'Peda. Gown +1',
        Waist = 'Embla Sash',
		Ear2 = 'Savant\'s Earring'
    },
    Power = {--rapture/ebullience
        Head = 'Arbatel Bonnet +2',
	},
    Klimaform = {--klimaform dmg boost
        Feet = 'Arbatel Loafers +1',
	},
	Enlightenment = {
		Body = 'Peda. Gown +1'
	},
	Tabula = {
		Legs = 'Peda. Pants +1'
	},
    TH = {
        Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
		Head = 'Wh. Rarab Cap +1', 
	},
    Movement = {
        Ring2 = 'Shneddick Ring +1',
	},
    ['PetRegen'] = {
        Body = { Name = 'Telchine Chas.', Augment = { [1] = 'Pet: "Regen"+3', [2] = '"Regen" potency+3' } },
    },
};
profile.Sets = sets;

profile.Packer = {
    {Name = 'Tropical Crepe', Quantity = 'all'},
    {Name = 'Rolan. Daifuku', Quantity = 'all'},
};

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 8');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
    gcinclude.HandleCommands(args);
end

profile.HandleDefault = function()
    local player = gData.GetPlayer();
    local sub = gData.GetBuffCount('Sublimation: Activated');
    gFunc.EquipSet(sets.Idle);

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')) end
		if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
	
    gcinclude.CheckDefault ();
    if (gcdisplay.GetCycle('Weapon') == 'Staff') then
        gFunc.EquipSet(sets.Idle_Staff);
    end
    if (sub > 0) then
        gFunc.EquipSet(sets.Sublimation);
    end
    if (gcdisplay.GetToggle('DTset') == true) then gFunc.EquipSet(sets.Dt) end;
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.Movement) end;
end

	    if gData.GetBuffCount('Silence') > 0 then
        AshitaCore:GetChatManager():QueueCommand(1, '/item "Echo Drops" <me>')
	end

profile.HandleAbility = function()
    local ability = gData.GetAction();

	if string.match(ability.Name, 'Tabula Rasa') then gFunc.EquipSet(sets.Tabula) end --lazy way to ensure the empy head piece is in on use
    if string.match(ability.Name, 'Enlightenment') then gFunc.EquipSet(sets.Enlightenment) end
	
    gcinclude.CheckCancels();
end

profile.HandleItem = function()
    local item = gData.GetAction();

	if string.match(item.Name, 'Holy Water') then gFunc.EquipSet(gcinclude.sets.Holy_Water) end
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();

    gFunc.EquipSet(sets.Precast);

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing_Precast);

        if string.contains(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin_Precast);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure_Precast);
    end

    gcinclude.CheckCancels();
    if (gcdisplay.GetCycle('Weapon') == 'Staff') then
        gFunc.EquipSet(sets.Idle_Staff);
    end
end

profile.HandleMidcast = function()
    local player = gData.GetPlayer();
    local weather = gData.GetEnvironment();
    local spell = gData.GetAction();
    local target = gData.GetActionTarget();
    local me = AshitaCore:GetMemoryManager():GetParty():GetMemberName(0);
    local power = gData.GetBuffCount('Ebullience') +  gData.GetBuffCount('Rapture');
    local klimaform = gData.GetBuffCount('Klimaform');

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
        if (target.Name == me) then
            gFunc.EquipSet(sets.Self_Enhancing);
        end

        if string.match(spell.Name, 'Phalanx') then
            gFunc.EquipSet(sets.Phalanx);
        elseif string.match(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin);
        elseif string.contains(spell.Name, 'Regen') then
            gFunc.EquipSet(sets.Regen);
        elseif string.contains(spell.Name, 'storm') then
            gFunc.EquipSet(sets.Storm);
        elseif string.contains(spell.Name, 'Refresh') then
            gFunc.EquipSet(sets.Refresh);
            if (target.Name == me) then
                gFunc.EquipSet(sets.Self_Refresh);
            end
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
        if (target.Name == me) then
            gFunc.EquipSet(sets.Self_Cure);
        end
        if string.match(spell.Name, 'Cursna') then
            gFunc.EquipSet(sets.Cursna);
        end
    elseif (spell.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.Nuke);

        if (gcdisplay.GetCycle('NukeSet') == 'Macc') then
            gFunc.EquipSet(sets.NukeACC);
        end
        if (gcdisplay.GetToggle('Burst') == true) then
            gFunc.EquipSet(sets.Burst);
        end
        if (spell.Element == weather.WeatherElement) then
            gFunc.Equip('Waist', 'Hachirin-no-Obi');
            if klimaform > 0 then
                gFunc.EquipSet(sets.Klimaform);
            end
        elseif (spell.Element == weather.DayElement) then
            gFunc.Equip('Waist', 'Hachirin-no-Obi');
        end
        if (player.MPP <= 40) then
            gFunc.EquipSet(sets.Mp_Body);
        end
        if string.contains(spell.Name, 'helix') then
            gFunc.EquipSet(sets.Helix);
            if (gcdisplay.GetToggle('Burst') == true) then
                gFunc.EquipSet(sets.HelixBurst);
            end
            if string.contains(spell.Name, 'Nocto') then
                gFunc.Equip('Head', 'Pixie Hairpin +1');
            end
        end
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Enfeebling); -- mostly macc anyways
        if (string.contains(spell.Name, 'Aspir') or string.contains(spell.Name, 'Drain')) then
            gFunc.EquipSet(sets.Drain);
        elseif (string.match(spell.Name, 'Kaustra')) then
            gFunc.EquipSet(sets.Kaustra);
        end
    end

    if (power > 0) then
        gFunc.EquipSet(sets.Power);
    end
    if (gcdisplay.GetCycle('Weapon') == 'Staff') then
        gFunc.EquipSet(sets.Idle_Staff);
    end
	if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
end

profile.HandlePreshot = function()
    gFunc.EquipSet(sets.Preshot);
end

profile.HandleMidshot = function()
    gFunc.EquipSet(sets.Midshot);
	if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
end

profile.HandleWeaponskill = function()
    local canWS = gcinclude.CheckWsBailout();
    if (canWS == false) then gFunc.CancelAction() return;
    else
        local ws = gData.GetAction();
    
        gFunc.EquipSet(sets.Ws_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
        gFunc.EquipSet('Ws_' .. gcdisplay.GetCycle('MeleeSet')) end

        if string.match(ws.Name, 'Cataclysm') then
            gFunc.EquipSet(sets.Cataclysm_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Cataclysm_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Mykyr') then
            gFunc.EquipSet(sets.Mykyr_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Mykyr_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;
