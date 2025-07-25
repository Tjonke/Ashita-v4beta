local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
    Idle = {
        Main = 'Daybreak',
        Sub = 'Culminus',
        Ammo = 'Staunch Tathlum +1',
        Head = 'Arbatel Bonnet +2',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Eabani Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = 'Lugh\'s Cape',
        Waist = 'Gishdubar Sash',
        Legs = 'Agwu\'s Slops',
        Feet = 'Nyame Sollerets',
    },
    Idle_Staff = {
        Main = 'Marin Staff +1',
        Sub = 'Enki Strap',
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
        Ring2 = 'Stikini Ring +2',
		Waist = 'Fucho-no-Obi',
        Legs = 'Assid. Pants +1',
    },
    Town = {
        Main = 'Daybreak',
        Sub = 'Culminus',
        Ammo = 'Staunch Tathlum +1',
        Head = 'Null Masque',
        Neck = 'Elite Royal Collar',
        Body = 'Agwu\'s Robe',
        Hands = 'Agwu\'s Gages',
        Back = 'Moonlight Cape',
        Legs = 'Agwu\'s Slops',
        Feet = 'Agwu\'s Pigaches',
		Ring2 = 'Shneddick Ring +1',
		Ring1 = 'Defending Ring',
    },

    Dt = {
        Ammo = 'Staunch Tathlum +1',
        Head = 'Nyame Helm',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Moonlight Cape',
        Waist = 'Gishdubar Sash',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
        Ammo = 'Jukukik Feather',
        Head = 'Agwu\'s Cap',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Telos Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Chirich Ring +1',
        Ring2 = 'Chirich Ring +1',
        Back = 'Null Shawl',
        Waist = 'Eschan Stone',
        Legs = 'Agwu\'s Slops',
        Feet = 'Agwu\'s Pigaches',
    },
    Tp_Hybrid = {
    },
    Tp_Acc = {
        Ring1 = 'Chirich Ring +1',
        Ring2 = 'Chirich Ring +1',
    },


    Precast = {
        Main = 'Daybreak',
		Sub = 'Culminus',
		Ammo = 'Incantor Stone',
		Head = 'Agwu\'s Cap', --5
        Neck = 'Voltsurge Torque', --4
        Ear2 = 'Etiolation Earring', --1
        Ear1 = 'Malignance Earring', --4
        Body = 'Agwu\'s Robe', --8
        Hands = 'Agwu\'s Gages', --6
        Ring2 = 'Medada\'s Ring', --10
		Ring1 = 'Lebeche Ring', --
        Back = 'Swith Cape +1', --4
        Waist = 'Embla Sash', --5
        Legs = 'Agwu\'s Slops', --7
        Feet = 'Agwu\'s Pigaches', --4
    },
    Cure_Precast = {
        Ear1 = 'Mendi. Earring',
        Feet = 'Vanya Clogs',
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
        Main = 'Daybreak',--I 30
        Sub = 'Sors Shield',
        Ammo = 'Hydrocera',
        Head = 'Vanya Hood',
		Body = 'Vanya Robe',
		Neck = 'Nodens Gorget',--I 5
        Ear1 = 'Mendi. Earring',--I 5
        Ear2 = 'Halasz Earring',
        Hands = 'Vanya Cuffs',--II 2 and skill
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = 'Solemnity Cape',--I 7
        Waist = 'Rumination Sash',
        Legs = 'Vanya Slops',--11
        Feet = 'Vanya Clogs',--I 10
    },
    Self_Cure = {--cap 30
        Waist = 'Gishdubar Sash',
    },
    Regen = {
        Main = 'Bolelabunga',
        -- Sub = 'Ammurapi Shield',
        Head = 'Arbatel Bonnet +2',
        Body = 'Telchine Chas.',
        Hands = 'Arbatel Bracers +1',
        Back = 'Lugh\'s Cape',
        Waist = 'Embla Sash',
        Legs = 'Telchine Braconi',
        Feet = 'Telchine Pigaches',
    },
    Cursna = {
        Ring1 = 'Purity Ring',
		Waist = 'Gishdubar Sash',
    },

    Enhancing = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Befouled Crown',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Body = 'Peda. Gown +3',
        Hands = 'Arbatel Bracers +1',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Waist = 'Embla Sash',
        Legs = 'Telchine Braconi',
        Feet = 'Telchine Pigaches',
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
    Self_Refresh = {},

    Enfeebling = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Befouled Crown',
        Neck = 'Erra Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Acad. Gown +2',
        Hands = 'Peda. Bracers +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = { Name = 'Aurist\'s Cape +1', AugPath='A' },
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Acad. Pants +2',
        Feet = 'Acad. Loafers +2',
    },

    Drain = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Pixie Hairpin +1',
        Neck = 'Erra Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Acad. Gown +2',
        Hands = 'Acad. Bracers +3',
        Ring1 = 'Kishar Ring',
        Ring2 = 'Metamor. Ring +1',
        Back = 'Aurist\'s Cape +1',
        Waist = 'Fucho-no-Obi',
        Legs = 'Acad. Pants +2',
        Feet = 'Agwu\'s Pigaches',
    },

    Nuke = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Ammurapi Shield',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Peda. M.Board +3',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Regal Earring',
        Ear2 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Amalric Gages +1',
        Ring1 = 'Shiva Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Lugh\'s Cape',
        Waist = 'Eschan Stone',
        Legs = 'Amalric Slops +1',
        Feet = 'Amalric Nails +1',
    },
    NukeACC = {
        Neck = 'Argute Stole +1',
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
    },
    Burst = {
        Main = 'Bunzi\'s Rod', -- 10 and 0
        Sub = 'Ammurapi Shield',
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Peda. M.Board +3', -- 0 and 4
        Neck = 'Argute Stole +1', -- 7 and 0
        Body = 'Agwu\'s Robe', -- 10 and 0
        Hands = 'Amalric Gages +1', -- 0 and 6
        Ring1 = 'Mujin Band', -- 0 and 5
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Agwu\'s Slops', -- 9 and 0
        Feet = 'Agwu\'s Pigaches', -- 6 and 0
    },
    Helix = {
        Main = 'Bunzi\'s Rod',
        Sub = 'Culminus',
        Ammo = 'Ghastly Tathlum +1',
        Head = 'Agwu\'s Cap',
        Neck = 'Argute Stole +1',
        Ear1 = 'Crematio Earring',
        Ear2 = 'Arbatel Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Amalric Gages +1',
        Ring1 = 'Shiva Ring +1',
        Ring2 = 'Mallquis Ring',
        Back = 'Lugh\'s Cape',
        Waist = 'Eschan Stone',
        Legs = 'Agwu\'s Slops',
        Feet = 'Amalric Nails +1',
    },
    HelixBurst = {
        Ring1 = 'Mujin Band',
        Feet = 'Agwu\'s Pigaches', -- 6 and 0
    },
    Storm = {
        Feet = 'Peda. Loafers +3',
    },
    Kaustra = {--need to refine this set
        Main = 'Marin Staff +1',
        Sub = 'Enki Strap',
        Ammo = 'Pemphredo Tathlum',
        Head = 'Pixie Hairpin +1',
        Neck = 'Argute Stole +1',
        Ear1 = 'Regal Earring',
        Ear2 = 'Arbatel Earring',
        Body = 'Seidr Cotehardie',
        Hands = 'Amalric Gages +1',
        Ring1 = 'Stikini Ring +1',--freke ring
        Ring2 = 'Archon Ring',
        Back = 'Lugh\'s Cape',
        Waist = { Name = 'Acuity Belt +1', AugPath='A' },
        Legs = 'Amalric Slops +1',
        Feet = 'Amalric Nails +1',
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
        Body = 'Acad. Gown +2',
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
        Head = 'Acad. Mortar. +2',
        Body = 'Peda. Gown +3',
        Waist = 'Embla Sash',
    },
    Power = {--rapture/ebullience
        Head = 'Arbatel Bonnet +2',
	},
    Klimaform = {--klimaform dmg boost
        Feet = 'Arbatel Loafers +1',
	},
    TH = {
        Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
	},
    Movement = {
        Feet = 'Herald\'s Gaiters',
	},
    ['Book_Regen'] = {
        Back = { Name = 'Bookworm\'s Cape', Augment = { [1] = '"Regen" potency+10', [2] = 'MND+1', [3] = 'INT+2' } },
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

profile.HandleAbility = function()
    local ability = gData.GetAction();

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
