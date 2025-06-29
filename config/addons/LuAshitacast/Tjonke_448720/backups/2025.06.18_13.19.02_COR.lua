local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
    Idle = {
        Range = 'Fomalhaut',
        Ammo = 'Chrono Bullet',
        Head = 'Null Masque',
        Neck = 'Elite Royal Collar',
        Ear1 = 'Eabani Earring',
        Ear2 = 'Infused Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring2 = 'Defending Ring',
        Ring1 = 'Lunette Ring +1',
        Back = 'Null Shawl',
        Waist = 'Plat. Mog. Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Idle_TPgun = {
       Range = 'Fomalhaut',
    },
    Resting = {},
    Idle_Regen = {
        Head = 'Null Masque',
        Neck = 'Elite Royal Collar',
        Ear1 = 'Infused Earring',
		Ear2 = 'Odnowa Earring +1',
        Hands = 'Meg. Gloves +2',
		Body = 'Meg. Cuirie +2',
        Back = 'Null Shawl',
		Ring1 = 'Chirich Ring +1',
		Ring2 = 'Chirich Ring +1',
        Legs = 'Meg. Chausses +2',
        Feet = 'Meg. Jam. +2',
		Waist = 'Null Belt',
    },
    Idle_Refresh = {
       
    },
    Town = {
        Main = 'Rostam',
        Sub = 'Nusku Shield',
        Range = 'Armageddon',
        Ammo = 'Chrono Bullet',
        Head = 'Null Masque',
        Neck = 'Elite Royal Collar',
        Body = 'Oshosi Vest +1',
        Hands = 'Lanun Gants +3',
		Waist = 'Plat. Mog. Belt',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Epona\'s Ring',
        Legs = 'Carmine Cuisses +1',
        Feet = 'Lanun Bottes +3',
		Back = 'Moonlight Cape',
    },

    Dt = {
        Head = 'Null Masque',
        Neck = 'Elite Royal Collar',
        Ear1 = { Name = 'Odnowa Earring +1', AugPath='A' },
        Ear2 = 'Tuisto Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring2 = 'Defending Ring',
        Ring1 = 'Chirich Ring +1',
        Back = 'Moonlight Cape',
        Waist = 'Plat. Mog. Belt',
        Legs = 'Malignance Tights',
        Feet = 'Malignance boots',
    },

    Tp_Default = {
        Head = 'Null Masque',
        Neck = 'Asperity Necklace',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Adhemar Jacket +1',
        Hands = 'Adhemar Wrist. +1',
        Ring2 = 'Petrov Ring',
        Ring1 = 'Epona\'s Ring',
        Back = 'Null Shawl',
        Waist = { Name = 'Sailfi Belt +1', AugPath='A' },
        Legs = 'Samnuha Tights',
        Feet = 'Malignance Boots', --'Herculean Boots'
    },
    Tp_Hybrid = {
        Head = 'Null Mask',
        Hands = 'Nyame Gauntlets',
		Legs = 'Malignance Tights',
		Feet = 'Malignance Boots',
    },
    Tp_Acc = {
        Head = 'Null Masque',
        Body = 'Chasseur\'s Frac +2',
        Hands = 'Chasseur\'s Gants +3',
        Neck = 'Null Loop',
		Legs = 'Chas. Culottes +2',
		Feet = 'Meg. Jam +2',
		Ring1 = 'Chirich Ring +1',
        Ring2 = 'Chirich Ring +1',
		Back = 'Null Shawl',
		Waist = 'Null Belt',
	},


    Precast = {
         Ear1 = 'Enchntr. Earring +1', --2
        Ear2 = 'Loquac. Earring',--1
        Neck = 'Voltsurge Torque',
		Body = 'Taeon Tabard',
        Hands = 'Leyline Gloves',
        Ring1 = 'Medada\'s Ring',
		Ring2 = 'Lebeche Ring',
        Legs = 'Carmine Cuisses +1',
    },


    Cure = {
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ring1 = 'Stikini Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Back = 'Solemnity Cape',
        Legs = 'Carmine Cuisses +1',
    },

    Enhancing = {
        Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },

    Enfeebling = {
        Neck = 'Erra Pendant',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },
    Macc = {},

    Drain = {
        Neck = 'Erra Pendant',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
    },

    Nuke = {
        Head = 'Nyame Helm',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Shiva Ring +1',
        Ring2 = { Name = 'Metamor. Ring +1', AugPath='A' },
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },

    Preshot = {--base preshot, no flurry, 70cap, 10 from gifts (only 1200 JP needed)
        Ammo = 'Chrone Bullet',
        Head = 'Chass. Tricorne +2',
        Neck = 'Comm. Charm +1',
        Body = 'Oshosi Vest +1', --14
        Hands = 'Carmine Fin. Ga. +1',--11
        Back = 'Camulus\'s Mantle',
        Waist = 'K. Kachina Belt +1',--3
        -- Legs = 'Ikenga\'s Trousers',--8
        Legs = 'Chas. Culottes +2',--10
        Feet = 'Meg. Jam. +2',--10
    },
    Preshot_FlurryI = {--with flurry I on, gives 15
    },
    Preshot_FlurryII = {--with flurry II on, gives 30
        Hands = 'Carmine Fin. Ga. +1',--8
    },
    Midshot = {
        Ammo = 'Chrone Bullet',
        Head = 'Ikenga\'s Hat',
        Neck = 'Comm. Charm +1',
        Ear1 = 'Telos Earring',
        Ear2 = 'Chas. Earrign +1',
        Body = 'Nisroch Jerkin',
        Hands = 'Chasseur\'s Gants +3',
        Ring1 = 'Meghanada Ring',
        Ring2 = 'Paqichikaji Ring',
        Back = 'Null Shawl', 
		Waist = 'Eschan Stone',
        Legs = 'Chas. Culottes +2',
        Feet = 'Chas. Bottes +2',
    },
    Midshot_Acc = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Chas. Earring +1',
        Neck = 'Null Loop', 
		Body = 'Chasseur\'s. Frac +2',
        Ring1 = 'Meghanada Ring',
		Ring2 = 'Paqichikaji Ring',
        Legs = 'Chas. Culottes +2',
		Feet = 'Malignance boots',
		Back = 'Null Shawl',
    },
    TripleShot = {
        Ammo = 'Chrone Bullet',
        Body = 'Chasseur\'s Frac +2',
		Hands = 'Lanun Gants +3',
		Back = 'Camulus\'s Mantle',
    },

    Ws_Default = {
        Head = 'Nyame Helm',
        Neck = 'Fotia Gorget',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Back = 'Bleating Mantle',
        Waist = 'Fotia Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },
    WsObi = {--puts elemental obi on for leaden/wildfire under dark/fire situations
        Waist = 'Hachirin-no-Obi',
    },

    Savage_Default = {
        Neck = 'Asperity Necklace',
        Ear1 = 'Telos Earring',
        Ear2 = 'Moonshade Earring',
        Hands = 'Chasseur\'s Gants +3',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Epona\'s Ring',
        Back = 'Null Mantle',
        Waist = 'Sailfi Belt +1',
        Legs = 'Meg. Chausses +2',
        Feet = 'Lanun Bottes +3',
    },
    Savage_Hybrid = {
    },
    Savage_Acc = {
        Ear1 = 'Telos Earring',
		Neck = 'Null Loop',
		Waist = 'Null Belt',
    },

    Evisceration_Default = {
        Head = 'Adhemar Bonnet +1',
        Neck = 'Fotia Gorget',
        Ear1 = 'Odr Earring',
        Ear2 = 'Telos Earring',
        Body = 'Meg. Cuiriet +2',
        Hands = 'Chasseur\'s Gants +3',
        Ring1 = 'Chirich Ring +1',
        Ring2 = 'Rajas Ring',
        Waist = 'Fotia Belt',
        Legs = 'Meg. Chausses +2',
        Feet = 'Adhe. Gamashes +1',
		Back = 'Null Shawl',
    },
    Evisceration_Hybrid = {
    },
    Evisceration_Acc = {
        Head = 'Adhemar Bonnet +1',
		Waist = 'Null Belt',
		Neck = 'Null Loop',
    },

    Aedge_Default = {
        Ammo = 'Orichalc. Bullet',
        Head = 'Nyame Helm',
        Neck = 'Comm. Charm +1',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Sortiarius Earring',
        Body = 'Lanun Frac +3',
        Hands = 'Carmine Fin. Ga. +1',
        Ring1 = 'Medada\'s Ring',
        Ring2 = 'Acumen Ring',
        Back = 'Izdubar Mantle',
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Lanun Bottes +3',
    },
    Aedge_Hybrid = {
    },
    Aedge_Acc = {
    },

    Laststand_Default = {
        Head = 'Lanun Tricorne +3',
        Neck = 'Fotia Gorget',
        Ear2 = 'Telos Earring',
        Ear1 = 'Moonshade Earring',
        Body = 'Ikenga\'s Vest',
        Hands = 'Chasseur\'s Gants +3',
        Ring1 = 'Paqichikaji Ring',
        Ring2 = 'Ilabrat Ring',
        Back = 'Camulus\'s Mantle',
		Waist = 'Fotia Belt',
        Legs = 'Meg. Chausses +2',
        Feet = 'Lanun Bottes +3',
    },
    Laststand_Hybrid = {
    },
    Laststand_Acc = {
    },

    Wildfire_Default = {
        Ammo = 'Chrono Bullet',
        Head = 'Nyame Helm',
        Neck = 'Comm. Charm +1',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Sortiarius Earring',
        Body = 'Lanun Frac +3',
        Hands = 'Carmine Fin. Ga. +1',
        Ring1 = 'Medada\'s Ring',
        Ring2 = 'Medada\'s Ring',
        Back = 'Izdubar Mantle',
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Lanun Bottes +3',
    },
    Wildfire_Hybrid = {
    },
    Wildfire_Acc = {
        Ear2 = 'Telos Earring',
    },

    Leaden_Default = {
        Ammo = 'Devastating Bullet',
        Head = 'Pixie Hairpin +1',
        Neck = 'Comm. Charm +1',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Lanun Frac +3',
        Hands = 'Carmine Fin. Ga. +1',
        Ring1 = 'Acumen Ring',
        Ring2 = 'Medada\'s Ring',
        Back = 'Izdubar Mantle',
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Lanun Bottes +3',
    },
    Leaden_Hybrid = {
    },
    Leaden_Acc = {
        Ear2 = 'Telos Earring',
        Waist = 'Eschan Stone',
    },

    QD = {
        Ammo = 'Devastating Bullet',
        Head = 'Laksa. Tricorne +1',
        Neck = 'Comm. Charm +1',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Sortiarius Earring',
        Body = 'Lanun Frac +3',
        Hands = 'Carmine Fin. Ga. +1',
        Ring1 = 'Acumen Ring',
        Ring2 = 'Medada\'s Ring',
        Back = 'Izdubar Mantle',
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Chass. Bottes +2',
    },
    QD_Acc = {--with AF 2/3 and regal is better
        Ammo = 'Devastating Bullet',
        Head = 'Chass. Tricorne +2',
        Neck = 'Null Loop',
        Ear1 = 'Telos Earring',
		Ear2 = 'Chas. Earring +1',
        Body = 'Meg. Cuirie +2',
        Hands = 'Chasseur\'s Gants +3',
        Ring1 = 'Acumen Ring',
        Ring2 = 'Medada\'s Ring',
        Back = 'Null Shawl',
		Waist = 'K. Kachina Belt +1',
		Legs = 'Chas. Culottes +2',
        Feet = 'Chass. Bottes +2',
    },
    Rolls = { -- it will put on ur DT gear set first then layer this set on for phantom roll (not dbl up), use /dt if you think you need to lock dt set while rolling
        Main = 'Rostam',
        Range = 'Compensator',
        Head = 'Lanun Tricorne +3',
        Hands = 'Chasseur\'s Gants +3',
		Body = 'Chasseur\'s Frac +2',
        Legs = 'Desultor Tassets',
		Feet = 'Chass. Bottes +2',
		Back = 'Camulus\'s Mantle',
		Ring1 = 'Luzaf\'s Ring',
    },
    Fold = {Hands = 'Lanun Gants +3'},
    WildCard = {Feet = 'Lanun Bottes +3'},
    RandomDeal = {Body = 'Lanun Frac +3'},
    SnakeEye = {Legs = 'Lanun Trews +1'},
   	
	TH = {
		Waist = 'Chaac Belt',
		Head = 'Wh. Rarab Cap +1',
    },
    Movement = {Legs = 'Carmine Cuisses +1'},
    ['LeadenCape'] = {
        Back = { Name = 'Camulus\'s Mantle', Augment = { [1] = 'Mag. Acc.+20', [2] = 'Weapon skill damage +10%', [3] = 'Mag. Evasion+15', [4] = 'AGI+25', [5] = 'Magic Damage+20' } },
    },
};
profile.Sets = sets;

profile.Packer = {
    {Name = 'Chrono Bullet', Quantity = 'all'},
    {Name = 'Trump Card', Quantity = 'all'},
    {Name = 'Trump Card Case', Quantity = 'all'},
};

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 1');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');

    gcinclude.settings.RefreshGearMPP = 50;
    gcinclude.CORmsg = false; -- set this to false if you do not want to see lucky/unlucky # messages, can also do /cormsg in game to change on the fly
end

profile.OnUnload = function()
    gcinclude.Unload();
end

profile.HandleCommand = function(args)
    gcinclude.HandleCommands(args);
end

profile.HandleDefault = function()
    gFunc.EquipSet(sets.Idle);
    if gcdisplay.GetToggle('TPgun') == true then
        gFunc.EquipSet(sets.Idle_TPgun);
    end
	
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

    if (ability.Name:contains('Roll')) then
        gFunc.EquipSet(sets.Dt);
        gFunc.EquipSet(sets.Rolls);
        gcinclude.DoCORmsg(ability.Name);
    elseif (ability.Name == 'Wild Card') then gFunc.EquipSet(sets.WildCard);
    elseif (ability.Name == 'Fold') then gFunc.EquipSet(sets.Fold);
	elseif (ability.Name == 'Random Deal') then gFunc.EquipSet(sets.RandomDeal);
    elseif (ability.Name == 'Snake Eye') then gFunc.EquipSet(sets.SnakeEye);
    elseif (ability.Name:contains('Shot')) and (ability.Name ~= 'Triple Shot') then
        gFunc.EquipSet(sets.QD);
        if (gcdisplay.GetCycle('Melee') == 'Acc') or (ability.Name == 'Dark Shot') or (ability.Name == 'Light Shot') then
            gFunc.EquipSet(sets.QD_Acc);
        end
    end

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
    local flurryI = gData.GetBuffCount(265);
    local flurryII = gData.GetBuffCount(581);

    gFunc.EquipSet(sets.Preshot);

    if flurryII > 0 then
        gFunc.EquipSet(sets.Preshot_FlurryII);
    elseif flurryI > 0 then
        gFunc.EquipSet(sets.Preshot_FlurryI);
    end
end

profile.HandleMidshot = function()
    local triple = gData.GetBuffCount('Triple Shot');
    gFunc.EquipSet(sets.Midshot);

    if triple > 0 then
        gFunc.EquipSet(sets.TripleShot);
    end

    if (gcdisplay.GetCycle('MeleeSet') == 'Acc') then
        gFunc.EquipSet(sets.Midshot_Acc);
    end
	if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
end

profile.HandleWeaponskill = function()
    local canWS = gcinclude.CheckWsBailout();
    if (canWS == false) then gFunc.CancelAction() return;
    else
        local ws = gData.GetAction();
        local weather = gData.GetEnvironment();
    
        gFunc.EquipSet(sets.Ws_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
        gFunc.EquipSet('Ws_' .. gcdisplay.GetCycle('MeleeSet')) end
        
        if string.match(ws.Name, 'Savage Blade') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Evisceration') then
            gFunc.EquipSet(sets.Evisceration_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Evisceration_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Aeolian Edge') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
             if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;
        elseif string.match(ws.Name, 'Last Stand') then
            gFunc.EquipSet(sets.Laststand_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Laststand_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Wildfire') then
            gFunc.EquipSet(sets.Wildfire_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Wildfire_' .. gcdisplay.GetCycle('MeleeSet')); end
            if (weather.DayElement == 'Fire' or weather.RawWeatherElement == 'Fire') then gFunc.EquipSet(sets.WsObi) end
        elseif string.match(ws.Name, 'Leaden Salute') then
            gFunc.EquipSet(sets.Leaden_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Leaden_' .. gcdisplay.GetCycle('MeleeSet')); end
            if (gcdisplay.GetCycle('MeleeSet') == 'Default') then gcinclude.DoMoonshade() end;
            if (weather.DayElement == 'Dark' or weather.RawWeatherElement == 'Dark') then gFunc.EquipSet(sets.WsObi) end
        end
    end
end

return profile;
