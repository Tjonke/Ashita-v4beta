local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');

local sets = {
    Idle = {
        Main = 'Idris',
        Sub = 'Genbu\'s Shield',
        Range = 'Dunna',
        Head = 'Azimuth Hood +3',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Azimuth Earring +1',
        Body = 'Nyame Mail',
        Hands = 'Azimuth Gloves +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = 'Moonlight Cape',
        Waist = 'Null Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Azimuth Gaiters +2',
    },
    Idle_Pet = {
        Main = 'Idris',
        Sub = 'Genbu\'s Shield',
        Range = 'Dunna',
        Head = 'Azimuth Hood +3',
        Neck = 'Bagua Charm +2',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Etiolation Earring',
        Hands = 'Geo. Mitaines +4',
        Ring1 = 'Gelatinous Ring +1',
        Ring2 = 'Defending Ring',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = 'Pet: "Regen"+15', [2] = 'Mag. Evasion+20', [3] = 'VIT+20', [4] = 'Evasion+30' } },
        Waist = 'Isa Belt',
        Feet = 'Bagua Sandals +4',
		Body = { Name = 'Telchine Chas.', Augment = { [1] = 'Pet: "Regen"+3', [2] = '"Regen" potency+3' } },
        Legs = { Name = 'Telchine Braconi', Augment = 'Pet: "Regen"+3' },
    },
	Pet_Dt = {
        Main = 'Idris',
        Sub = 'Genbu\'s Shield',
        Range = 'Dunna',
        Head = 'Azimuth Hood +3',
        Neck = 'Bagua Charm +2',
        Ear1 = 'Eabani Earring',
        Ear2 = 'Etiolation Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Geo. Mitaines +4',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Defending Ring',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = 'Pet: "Regen"+15', [2] = 'Mag. Evasion+20', [3] = 'VIT+20', [4] = 'Evasion+30' } },
        Waist = 'Isa Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Bagua Sandals +4',
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'Sanctity Necklace',
        Head = 'Null Masque',
		Ear1 = 'Infused Earring',
        Ring1 = 'Chirich Ring +1',
		Ring2 = 'Chirich Ring +1',
		Waist = 'Null Belt',
    },
    Idle_Refresh = {
        Main = 'Idris',
        Head = 'Null Masque',
        Body = 'Jhakri Robe +2',
        Hands = 'Bagua Mitaines +4',
        Waist = 'Fucho-no-Obi',
        Legs = 'Assid. Pants +1',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
    },
    Town = {
        Main = 'Idris',
        Sub = 'Culminus',
        Range = 'Dunna',
        Head = 'Geo. Galero +4',
        Body = 'Agwu\'s Robe',
        Hands = 'Bagua Mitaines +4',
        Legs = 'Assid. Pants +1',
        Feet = 'Geo. Sandals +4',
		Back = 'Moonlight Cape',
		Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
		Ear2 = 'Azimuth Earring +1',
		Ear1 = 'Etiolation Earring',
		Waist = 'Fucho-no-Obi',
		Neck = 'Bagua Charm +2',
    },

    Dt = {
        Head = 'Azimuth Hood +3',
        Neck = 'Loricate Torque +1',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Azimuth Earring +1',
        Body = 'Agwu\'s Robe',
        Hands = 'Azimuth Gloves +2',
        Ring1 = 'Defending Ring',
        Ring2 = 'Gelatinous Ring +1',
        Back = 'Solemnity Cape',
        Waist = 'Plat. Mog. Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Azimuth Gaiters +2',
    },

    Tp_Default = {
        Main = 'Idris',
        Sub = 'Culminus',
        Range = 'Dunna',
        Head = 'Null Masque',
        Neck = 'Combatant\'s Torque',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Telos Earring',
        Body = 'Nyame Mail',
        Hands = 'Azimuth Gloves +2',
        Ring1 = 'Chirich Ring +1',
        Ring2 = 'Chirich Ring +1',
        Back = 'Null Shawl',
        Waist = 'Null Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Azimuth Gaiters +2',
    },
	
    Tp_Hybrid = {
    },
    Tp_Acc = {
        Head = 'Null Masque',
		Neck = 'Null Loop',
        Ring1 = 'Chirich Ring +1',
        Ring2 = 'Chirich Ring +1',
        Back = 'Null Shawl',
		Waist = 'Null Belt',
    },


    Precast = {
        Main = 'Idris',
        Range = 'Dunna',
        Sub = 'Culminus',
		Head = 'Agwu\'s Cap',
        Neck = 'Voltsurge Torque',
        Ear2 = 'Etiolation Earring',
        Ear1 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Agwu\'s Gages',
        Ring2 = 'Medada\'s Ring',
		Ring1 = 'Lebeche Ring',
        Back = 'Fi Follet Cape +1',
        Waist = 'Embla Sash', --5
        Legs = 'Geo. Pants +3',
        Feet = 'Agwu\'s Pigaches',
    },
    Cure_Precast = {
        Head = 'Vanya Hood',
		Hands = 'Vanya Cuffs',
		Legs = 'Vanya Slops',
		Body = 'Vanya Robe',
		Feet = 'Vanya Clogs',
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
	Elemental_Precast = {
		  Ear1 = 'Barkaro. Earring',

	},
    Cure = {--I cap is 50, II cap is 30
        Main = 'Idris',--I 30
        Sub = 'Sors Shield',
        Ammo = 'Hydrocera',
		Neck = 'Nodens Gorget',--I 5
        Ear1 = 'Mendi. Earring',--I 5
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = 'Solemnity Cape',
        Waist = 'Rumination Sash',
        Head = 'Vanya Hood',
		Hands = 'Vanya Cuffs',
		Legs = 'Vanya Slops',
		Body = 'Vanya Robe',
		Feet = 'Vanya Clogs',
    },
    Self_Cure = {--cap 30
        Waist = 'Gishdubar Sash',
		Hands = 'Agwu\'s Gages',
    },
    Regen = {
        -- Main = 'Bolelabunga',
        Sub = 'Culminus',
        Body = 'Telchine Chas.',
		Waist = 'Embla Sash',
        Legs = { Name = 'Telchine Braconi', Augment = '"Regen" potency+3' },
        Feet = { Name = 'Telchine Pigaches', Augment = { [1] = '"Regen" potency+3', [2] = '"Regen"+2' } },
		Hands = { Name = 'Telchine Gloves', Augment = '"Regen" potency+3' },
    },
    Cursna = {
        Ring1 = 'Haoma\'s Ring', --15
		Ring2 = 'Haoma\'s Ring', --15
		Waist = 'Gishdubar Sash', --10
		Feet = 'Vanya Clogs', --5
		Neck = 'Debilis Medallion', --15
		Back = 'Oretan. Cape +1', --5
    },

    Enhancing = {
        Main = 'Idris',
        Sub = 'Culminus',
       -- Ammo = 'Pemphredo Tathlum',
       -- Head = 'Befouled Crown',
        Head = 'Telchine Cap',
		Neck = 'Incanter\'s Torque',
        Ear1 = 'Mendi. Earring',
        Ear2 = 'Andoaa Earring',
        Body = 'Telchine Chas.',
        Hands = 'Azimuth Gloves +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = 'Fi Folet Cape +1',
        Waist = 'Olympus Sash',
        --Legs = 'Telchine Braconi',
        -- Feet = 'Telchine Pigaches',
    },
    Stoneskin = {
        Neck = 'Nodens Gorget',
        Waist = 'Siegel Sash',
		Legs = 'Shedir Seraweels',
		Ear1 = 'Earthcry Earring',
    },
    Phalanx = {
	},
    Refresh = {
		Waist = 'Gishdubar Sash',
    },
    Geomancy = { --900 skill, then indi duration, then CMP
        Main = 'Idris',
        Sub = 'Culminus',
		Range = 'Dunna',
        Head = 'Azimuth Hood +3',--sir
        Neck = 'Bagua Charm +2',
        Ear1 = 'Halasz Earring',
        Ear2 = 'Azimuth Earring +1',
		Body = 'Azimuth Coat +2',
        Hands = 'Azimuth Gloves +2',--15
        Ring2 = 'Defending Ring',--8
        Ring1 = 'Gelatinous Ring +1',
        Waist = 'Hachirin-no-Obi',
        Legs = 'Azimuth Tights +1',
        Feet = 'Azimuth Gaiters +2',
    },
    Indi = {
        Main = 'Idris',
        Head = 'Azimuth Hood +3',
		Neck = 'Incanter\'s Torque',
		Ear1 = 'Halasz Earring',
		Ear2 = 'Azimuth Earring +1',
		Body = 'Azimuth Coat +2',
		Hands = 'Azimuth Gloves +2',
		Back = { Name = 'Lifestream Cape', Augment = { [1] = 'Geomancy Skill +8', [2] = 'Indi. eff. dur. +20' } },
       	Legs = 'Bagua Pants +3',
		Ring2 = 'Defending Ring',--8
        Ring1 = 'Gelatinous Ring +1',
        Waist = 'Hachirin-no-Obi',
        Feet = 'Azimuth Gaiters +2',
    },

    Enfeebling = {
        Main = 'Idris',
        Sub = 'Culminus',
		Ammo = 'Quartz Tathlum +1',
        Head = 'Null Masque',
        Neck = 'Incanter\'s Torque',
        --Ear1 = 'Regal Earring',--use this when u upgrade the AF
        Ear1 = 'Enchantr. Earring +1',
        Ear2 = 'Malignance Earring',
        Body = 'Vanya Robe',
        Hands = 'Azimuth Gloves +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = 'Aurist\'s Cape',
        Waist = 'Null Belt',
        Legs = 'Agwu\'s Slops',
        Feet = 'Bagua Sandals +4',
    },
	
    Macc = {
        Main = 'Idris',
        Sub = 'Culminus',
        -- Ammo = 'Pemphredo Tathlum',
        Head = 'Null Masque',
        Neck = 'Null Loop',
        --Ear1 = 'Regal Earring',--use this when u upgrade the AF
        Ear1 = 'Enchantr. Earring +1',
        Ear2 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',
        Hands = 'Azimuth Gloves +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = 'Aurist\'s Cape',
        Waist ='Null Belt',
        Legs = 'Agwu\'s Slops',
        Feet = 'Agwu\'s Pigaches',
    },

    Drain = {
        Main = 'Idris',
        Sub = 'Culminus',
        Ammo = 'Hydrocera',
        Head = 'Bagua Galero +3',
        Neck = 'Incanter\'s Torque',
        Ear2 = 'Azimuth Earring +1',
        Ear1 = 'Malignance Earring',
        Body = 'Agwu\'s Robe',
        Ring1 = 'Evanescence Ring',
        Ring2 = 'Stikini Ring +1',
        Back = 'Null Shawl',
        Waist = 'Fucho-no-Obi',
        Legs = 'Agwu\'s Slops',
        Feet = 'Agwu\'s Pigaches',
    },

    Nuke = {
        Main = 'Idris',
        Sub = 'Culminus',
        -- Ammo = 'Pemphredo Tathlum',
        Ammo = 'Hydrocera',
		Head = 'Azimuth Hood +3',
        Neck = 'Sanctity Necklace',
        Ear2 = 'Azimuth Earring +1',
        Ear1 = 'Malignance Earring',
        Body = 'Azimuth Coat +2',
        Hands = 'Agwu\'s Gages',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc.+20', [4] = 'INT+30', [5] = 'Magic Damage+20' } },
    	Waist = 'Refoccilation Stone',
        Legs = 'Agwu\'s Slops',
        Feet = 'Agwu\'s Pigaches',
    },
    NukeACC = {
        Neck = 'Null Loop',
		Waist = 'Null Belt',
		Head = 'Geo. Galero +4',
    },
    Burst = {
        Main = 'Idris', --10 and 0
        Sub = 'Culminus',
        Head = 'Agwu\'s Cap',
        Neck = 'Mizu. Kubikazari',
        Ear1 = 'Malignance Earring',
        Ear2 = 'Azimuth Earring +1',
        Body = 'Azimuth Coat +2',
        Hands = 'Agwu\'s Gages',
        Ring1 = 'Jhakri Ring',
        Ring2 = 'Mujin Band',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc.+20', [4] = 'INT+30', [5] = 'Magic Damage+20' } },
    	Waist = 'Refoccilation Stone',
        Legs = 'Agwu\'s Slops',
        Feet = 'Agwu\'s Pigaches',
    },
    Mp_Body = {Body = 'Seidr Cotehardie',
	},

    Preshot = {
    },
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Crep. Earring',
    },

    Ws_Default = {
        Head = 'Nyame Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Nyame Mail',
        Hands = 'Azimuth Gloves +2',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Chirich Ring +1',
        Back = 'Null Shawl',
        Waist = 'Null Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },
    Aedge_Default = {
        Head = 'Azimuth Hood +3',
        Neck = 'Sanctity Necklace',
        Ear1 = 'Malignance Earring',
        Ear2 = 'Azimuth Earring +1',
        Body = 'Bagua Tunic +3',
        Hands = 'Bagua Mitaines +4',
        Ring1 = 'Medada\'s Ring',
        Ring2 = 'Acumen Ring',
        Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = 'Phys. dmg. taken -10%', [2] = '"Mag. Atk. Bns."+10', [3] = 'Mag. Acc.+20', [4] = 'INT+30', [5] = 'Magic Damage+20' } },
        Waist = 'Refoccilation Stone',
        Legs = 'Bagua Pants +3',
        Feet = 'Bagua Sandals +4',
    },
	
    Aedge_Hybrid = {
    },
    Aedge_Acc = {
    },

    Bolster = {
		Body = 'Bagua Tunic +3'
	},
	Concentric = {
		Head = 'Bagua Galero +3'
	},	
	
	LifeCycle = {
		Body = 'Geomancy Tunic +3',
		Back = { Name = 'Nantosuelta\'s Cape', Augment = { [1] = 'Pet: "Regen"+15', [2] = 'Mag. Evasion+20', [3] = 'VIT+20', [4] = 'Evasion+30' } },
	},
	TH = {
        Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
		Head = 'Wh. Rarab Cap +1'
	},
    Movement = {
        Head = 'Null Masque',
        Neck ='Elite Royal Collar',
        Ear1 = 'Infused Earring',
        Ear2 = 'Azimuth Earring +1',
        Body = 'Nyame Mail',
        Hands = 'Azimuth Gloves +2',
        Ring1 = 'Stikini Ring +1',
        Ring2 = 'Defending Ring',
        Back = 'Solemnity Cape',
		Waist = 'Null Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Geo. Sandals +4',
	},
    ['Telchine_Pet'] = {
        Body = { Name = 'Telchine Chas.', Augment = 'Pet: "Regen"+3' },
        Legs = { Name = 'Telchine Braconi', Augment = 'Pet: "Regen"+3' },
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

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 14');
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
    local pet = gData.GetPet();

    gFunc.EquipSet(sets.Idle);

    if (player.Status == 'Engaged') then
        gFunc.EquipSet(sets.Tp_Default)
        if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
			gFunc.EquipSet('Tp_' .. gcdisplay.GetCycle('MeleeSet')) end
		if (gcdisplay.GetToggle('TH') == true) then gFunc.EquipSet(sets.TH) end
        if (gcdisplay.GetToggle('Fight') == false) then AshitaCore:GetChatManager():QueueCommand(1, '/fight') end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
	
    gcinclude.CheckDefault ();
    if (pet ~= nil) and (player.Status ~= 'Engaged') then
        gFunc.EquipSet(sets.Idle_Pet);
    end
    if (gcdisplay.GetToggle('DTset') == true) then gFunc.EquipSet(sets.Dt) end;
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.Movement) end;
end

	    if gData.GetBuffCount('Silence') > 0 then
        AshitaCore:GetChatManager():QueueCommand(1, '/item "Echo Drops" <me>')
	end

profile.HandleAbility = function()
    local ability = gData.GetAction();

    if string.match(ability.Name, 'Full Circle') then gFunc.EquipSet(sets.Geomancy) end --lazy way to ensure the empy head piece is in on use
    if string.match(ability.Name, 'Bolster') then gFunc.EquipSet(sets.Bolster) end
	if string.match(ability.Name, 'Life Cycle') then gFunc.EquipSet(sets.LifeCycle) end
	if string.match(ability.Name, 'Concentric Pulse') then gFunc.EquipSet(sets.Concentric) end
	

    gcinclude.CheckCancels();
end

profile.HandleItem = function()
    local item = gData.GetAction();

	if string.match(item.Name, 'Holy Water') then gFunc.EquipSet(gcinclude.sets.Holy_Water) end
end

profile.HandlePrecast = function()
    local spell = gData.GetAction();

    gFunc.EquipSet(sets.Precast)

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing_Precast);

        if string.contains(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin_Precast);
        end
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure_Precast);
	elseif (spell.Skill == 'Elemental Magic') then
        gFunc.EquipSet(sets.Cure_Precast);	
    end

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local player = gData.GetPlayer();
    local weather = gData.GetEnvironment();
    local spell = gData.GetAction();
    local target = gData.GetActionTarget();
    local me = AshitaCore:GetMemoryManager():GetParty():GetMemberName(0);

    if (spell.Skill == 'Enhancing Magic') then
        gFunc.EquipSet(sets.Enhancing);

        if string.match(spell.Name, 'Phalanx') then
            gFunc.EquipSet(sets.Phalanx);
        elseif string.match(spell.Name, 'Stoneskin') then
            gFunc.EquipSet(sets.Stoneskin);
        elseif string.contains(spell.Name, 'Regen') then
            gFunc.EquipSet(sets.Regen);
        elseif string.contains(spell.Name, 'Refresh') then
            gFunc.EquipSet(sets.Refresh);
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
        if (spell.Element == weather.WeatherElement) or (spell.Element == weather.DayElement) then
            gFunc.Equip('Waist', 'Hachirin-no-Obi');
        end
        if (player.MPP <= 40) then
            gFunc.EquipSet(sets.Mp_Body);
        end
    elseif (spell.Skill == 'Enfeebling Magic') then
        gFunc.EquipSet(sets.Enfeebling);
        if (gcdisplay.GetCycle('NukeSet') == 'Macc') then
            gFunc.EquipSet(sets.Macc);
        end
    elseif (spell.Skill == 'Dark Magic') then
        gFunc.EquipSet(sets.Macc);
        if (string.contains(spell.Name, 'Aspir') or string.contains(spell.Name, 'Drain')) then
            gFunc.EquipSet(sets.Drain);
        end
    elseif (spell.Skill == 'Geomancy') then
        gFunc.EquipSet(sets.Geomancy);
        if (string.contains(spell.Name, 'Indi')) then
            gFunc.EquipSet(sets.Indi);
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
		end
		if string.match(ws.Name, 'Shining Strike') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
		end	
		if string.match(ws.Name, 'Seraph Strike') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
		end	
		if string.match(ws.Name, 'Flash Nova') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
		end	
    end
end

return profile;
