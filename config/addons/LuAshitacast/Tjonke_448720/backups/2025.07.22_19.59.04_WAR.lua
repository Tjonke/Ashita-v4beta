local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
    Idle = {
        Ammo = 'Staunch Tathlum +1',
        Head = 'Null Masque',
        Neck ='Elite Royal Collar',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Tuisto Earring',
        Body = 'Sakpata\'s Plate',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Shneddick Ring',
        Back = 'Moonlight Cape', 
        Waist = 'Plat. Mog. Belt',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Sakpata\'s Leggings',
    },
    Resting = {},
    Idle_Regen = {
        Head = 'Null Masque',
        Neck = 'Elite Royal Collar',
        Ear1 = 'Infused Earring',
        Legs = 'Volte Brayettes',
		Ring1 = 'Chirich Ring +1',
        Ring2 = 'Chirich Ring +1',
		Waist = 'Null belt',
    },
    Idle_Refresh = {
        
    },
    Town = {
        Main = 'Naegling',
        Sub = 'Blurred Shield +1',
        Head = 'Null Masque',
        Neck = 'War. Beads +2',
		Body = 'Pumm. Lorica +3',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Defending Ring',
		Ring2 = 'Shneddick Ring +1',
		Ear1 = 'Odnowa Earring +1',
		Ear2 = 'Tuisto Earring',
		Legs = 'Pumm. Cuisses +3',
        Feet = 'Pumm. Calligae +3',
		Waist = 'Plat. Mog. Belt',
		Back = 'Moonlight Cape',
    },

    Dt = {
        Ammo = 'Staunch Tathlum',
        Head = 'Nyame Helm',
        Neck = { Name = 'Loricate Torque +1', AugPath='A' },
        Ear1 = { Name = 'Odnowa Earring +1', AugPath='A' },
        Ear2 = 'Tuisto Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Moonlight Cape',
        Waist = 'Plat. Mog. Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
    	Main = 'Naegling',
        Sub = 'Blurred Shield +1',
		Ammo = 'Coiste Bodhar', --3
        Head = 'Hjarrandi Helm', --6
        Neck = 'War. Beads +2', --7
        Ear1 = 'Schere Earring', --3 
        Ear2 = 'Boii Earring', --7
        Body = 'Sakpata\'s Plate', --8
        Hands = 'Sakpata\'s Gauntlets', --6
        Ring1 = 'Petrov Ring', --1
        Ring2 = 'Chirich Ring +1', --
        Back =  'Null Shawl', --7
        Waist = 'Sailfi Belt +1', --5
        Legs = 'Pumm. Cuisses +3', --11
        Feet = 'Pumm. Calligae +3', --9 (101% tota)
    },
    Tp_Hybrid = {
        Ammo = 'Staunch Tathlum +1',
        Hands = 'Sakpata\'s Gauntlets',
    },
    Tp_Acc = {
        Head = 'Pummeler\'s Mask +3',
		Body = 'Pumm. Lorica +3',
		Hands = 'Pumm. Mufflers +2',
		Legs = 'Pumm. Cuisses +3',
		Feet = 'Pumm. Calligae +3',
		Ear1 = 'Telos Earring',
		Ear2 = 'Boii Earring',
		Ammo = 'Seething Bomblet',
        Neck = 'Null Loop',
		Ring1 = 'Chirich Ring +1',
        Ring2 = 'Chirich Ring +1',
        Waist = 'Null Belt',
		Back = 'Null Shawl',		
    },


    Precast = {
        Neck = 'Baetyl Pendant',
        Ear2 = 'Etiolation Earring',
        Ring1 = 'Prolix Ring',
        Feet = 'Odyssean Greaves',
    },


    Cure = {
        Ammo = 'Pemphredo Tathlum',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Feet = 'Odyssean Greaves',
    },

    Enhancing = {
        Ammo = 'Pemphredo Tathlum',
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },

    Enfeebling = {
        Ammo = 'Pemphredo Tathlum',
        Neck = 'Erra Pendant',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },
    Macc = {},

    Drain = {
        Neck = 'Erra Pendant',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },

    Nuke = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Nyame Helm',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Shiva Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Preshot = {
    },
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Crep. Earring',
    },

    Ws_Default = {
        Ammo = 'Oshasha\'s Treatise',
        Head = 'Sakpata\'s Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Ishvara Earring',
        Body = 'Pummeler\'s Lorica +3',
        Hands = 'Boii Mufflers +2',
        Ring1 = 'Chirich Ring +1',
        Ring2 = 'Epaminondas\'s Ring',
        Back = 'Cichol\'s Mantle',
        Waist = 'Fotia Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Sakpata\'s Leggings',
    },
    Ws_Hybrid = {
        Body = 'Hjarrandi Breast.',
    },
    Ws_Acc = {
    },
    Aedge_Default = {
        Ammo = 'Oshasha\'s Treatise',
        Head = 'Sakpata\'s Helm',
        --Head = 'Nyame Helm',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Shiva Ring +1',
        Ring2 = 'Karieyh Ring +1',
        Back = 'Cichol\'s Mantle',
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Aedge_Hybrid = {
    },
    Aedge_Acc = {
    },
    Savage_Default = {
        Ammo = 'Oshasha\'s Treatise',
        Head = 'Agoge Mask +2',
        Neck = 'War. Beads +2',
        Ear1 = 'Thrud Earring',
        Ear2 = 'Ishvara Earring',
        Body = 'Pumm. Lorica +3',
        Hands = 'Boii Mufflers +2',
        Ring1 = 'Epaminondas\'s Ring',
        Ring2 = 'Petrov Ring',
        Back = 'Cichol\'s Mantle',
        Waist = 'Sailfi Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'Sulev. Leggings +2',
    },
    Savage_Hybrid = {
    },
    Savage_Acc = {
    },
    Impulse_Default = {
        Ammo = 'Oshasha\'s Treatise',
        Head = 'Sakpata\'s Helm',
        Neck = 'Asperity Necklace',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Sakpata\'s Plate',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Epaminondas\'s Ring',
        Back = 'Cichol\'s Mantle',
        Waist = 'Sailfi Belt +1',
        Legs = 'Nyame Flanchard',
        Feet = 'Sakpata\'s Leggings',
    },
    Impulse_Hybrid = {
    },
    Impulse_Acc = {
    },

    Tomahawk = {
        Ammo = 'Thr. Tomahawk',
		Feet = 'Agoge Calligae +1',
	},
    Warcry = {
        Head = 'Agoge Mask +2',
	},
	Charge = {
		Legs = 'Agoge Cuisses +1',
	},	
	Retaliation = {
		Hands = 'Pumm. Mufflers +2'
	},	
    Aggressor = {
        Head = 'Pummeler\'s Mask +3',
        Body = 'Agoge Lorica +1',
		Sub = 'Diamond Aspis',
	},
    Defender = {
        Hands = 'Agoge Mufflers +1',
	},
    Restraint = {
        Hands = 'Boii Mufflers',
	},
    Berserk = {
        Body = 'Pumm. Lorica +3',
        Feet = 'Agoge Calligae +1',
		Sub = 'Diamond Aspis',
		Back = 'Cichol\'s Mantle',
	},
    BloodRage = {
        Body = 'Boii Lorica +1',
	},
	MightyStrikes = {
		Hands = 'Agoge Mufflers +1',
	},	
    TH = {
        Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
		Body = { Name = 'Odyss. Chestplate', Augment = { [1] = 'Accuracy+3', [2] = 'INT+3', [3] = 'Attack+3', [4] = '"Treasure Hunter"+2' } },
	},
    Movement = {
        Ring2 = 'Shneddick Ring +1',
	},
};
profile.Sets = sets;

profile.Packer = {
    {Name = 'Thr. Tomahawk', Quantity = 'all'},
    {Name = 'Red Curry Bun', Quantity = 'all'},
};

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 6');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');

    gcinclude.settings.RegenGearHPP = 65;
    gcinclude.settings.RefreshGearMPP = 40;
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
    gcinclude.HandleCommands(args);
end

profile.HandleDefault = function()
    gFunc.EquipSet(sets.Idle);
	
	local player = gData.GetPlayer();
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
    if (gcdisplay.GetToggle('DTset') == true) then gFunc.EquipSet(sets.Dt) end;
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.Movement) end;
end

profile.HandleAbility = function()
    local ability = gData.GetAction();

    if ability.Name == 'Tomahawk' then gFunc.EquipSet(sets.Tomahawk);
    elseif ability.Name == 'Berserk' then gFunc.EquipSet(sets.Berserk);
    elseif ability.Name == 'Aggressor' then gFunc.EquipSet(sets.Aggressor);
    elseif ability.Name == 'Warcry' then gFunc.EquipSet(sets.Warcry);
    elseif ability.Name == 'Defender' then gFunc.EquipSet(sets.Defender);
    elseif ability.Name == 'Mighty Strikes' then gFunc.EquipSet(sets.MightyStrikes);
	elseif ability.Name == 'Retaliation' then gFunc.EquipSet(sets.Retaliation);
	elseif ability.Name == 'Warrior\'s Charge' then gFunc.EquipSet(sets.Charge);
	elseif ability.Name == 'Restraint' then gFunc.EquipSet(sets.Restraint);
	elseif ability.Name == 'Blood Rage' then gFunc.EquipSet(sets.BloodRage) end;

    gcinclude.CheckCancels();
end

profile.HandleItem = function()
    local item = gData.GetAction();

	if string.match(item.Name, 'Holy Water') then gFunc.EquipSet(gcinclude.sets.Holy_Water) end
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();
    gFunc.EquipSet(sets.Precast);

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local weather = gData.GetEnvironment();
    local spell = gData.GetAction();
    local target = gData.GetActionTarget();

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure);
    elseif (spell.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.Nuke);
        if (spell.Element == weather.WeatherElement) or (spell.Element == weather.DayElement) then
            gFunc.Equip('Waist', 'Hachirin-no-Obi');
        end
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Macc);
        if (string.contains(spell.Name, 'Aspir') or string.contains(spell.Name, 'Drain')) then
            gFunc.EquipSet(sets.Drain);
        end
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
        
        if string.match(ws.Name, 'Aeolian Edge') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
            if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;
        elseif string.match(ws.Name, 'Savage Blade') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
            if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;
        elseif string.match(ws.Name, 'Impulse Drive') then
            gFunc.EquipSet(sets.Impulse_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Impulse_' .. gcdisplay.GetCycle('MeleeSet')); end
            if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;
        end
    end
end

return profile;
