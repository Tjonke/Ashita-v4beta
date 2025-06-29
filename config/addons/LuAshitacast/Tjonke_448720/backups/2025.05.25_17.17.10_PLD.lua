local profile = {};
gcinclude = gFunc.LoadFile('common\\gcinclude.lua');


local sets = {
    Idle = {
       Ammo = 'Staunch Tathlum +1',
       Head = 'Sakpata\'s Helm',
       Neck ='Combatant\'s Torque',
       Ear1 = 'Odnowa Earring +1',
       Ear2 = 'Tuisto Earring',
       Body = 'Sakpata\'s Plate',
       Hands = 'Sakpata\'s Gauntlets',
       Ring1 = 'Moonbeam Ring',
       Ring2 = 'Moonbeam Ring',
       Back = 'Moonlight Cape', 
       Waist = 'Plat. Mog. Belt',
       Legs = 'Sakpata\'s Cuisses',
       Feet = 'Sakpata\'s Leggings',
    },
    Resting = {},
    Idle_Regen = {
        Neck = 'Elite Royal Collar',
        Ear2 = 'Infused Earring',
        Ring1 = 'Chirich Ring +1',
		Ring2 = 'Chirich Ring +1',
		Waist = 'Null Belt',
    },
    Idle_Refresh = {
        Ammo = 'Homiliary',
        Neck = 'Coatl Gorget +1',
		Head = 'Odyssean Helm',
		Body = 'Jumalik Mail',
        Ring1 = 'Stikini Ring +1',
		Ring2 = 'Stikini Ring +1',
		Waist = 'Fucho-no-obi',
    },
	Divine_Emblem = {
        Feet = 'Chev. Sabatons +2',
    },
	Chivalry = {
		Hands = 'Cab. Gauntlets +2',
	},	
    Town = {
        Main = 'Moralltach',
        Sub = 'Srivatsa',
        Ammo = 'Homiliary',
        Head = 'Null Masque',
        Neck = 'Unmoving Collar +1',
		Body = 'Rev. Surcoat +3',
        Hands = 'Souv. Handsch. +1',
        Ring1 = 'Moonlight Ring',
		Ring2 = 'Moonlight Ring',
		Ear1 = 'Odnowa Earring +1',
		Ear2 = 'Tuisto Earring',
		Legs = 'Carmine Cuisses +1',
        Feet = 'Souveran Schuhs +1',
		Waist = 'Plat. Mog. Belt',
		Back = 'Moonlight Cape',
    },

    Dt = {
        Ammo = 'Staunch Tathlum +1',
        Head = 'Nyame Helm',
        Neck ='Elite Royal Collar',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Tuisto Earring',
        Body = 'Nyame Mail',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Moonbeam Ring',
        Ring2 = 'Moonbeam Ring',
        Back = 'Rudianos\'s Mantle',
        Waist = 'Flume Belt +1',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Nyame Sollerets',
    },

    Tp_Default = {
        Main = 'Naegling',
		Sub = 'Blurred Shield +1',
		Ammo = 'Coiste Bodhar',
        Head = 'Hjarrandi Helm',
        Neck = 'Combatant\'s Torque',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Sakpata\'s Plate',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Moonlight Ring',
        Ring2 = 'Moonlight Ring',
        Back =  'Null Shawl',
        Waist = 'Sailfi Belt +1',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Sakpata\'s Leggings',
    },
    Tp_Hybrid = {
        Ammo = 'Coiste Bodhar',
        Head = 'Sacpata\'s Helm',
        Neck ='Sanctity Necklace',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Sakpata\'s Plate',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Moonlight Ring',
        Ring2 = 'Moonlight Ring',
        Back =  'Phalangite Mantle',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Sakpata\'s Leggings',
    },
    Tp_Acc = {
        Ring1 = 'Moonlight Ring',
        Ring2 = 'Moonlight Ring',
		Neck = 'Null Loop',
		Ammo = 'Ginsen',
		Waist = 'Null Belt',
    },

    --These will overwrite any above TP profile.Sets if /tankset is used
    Tank_Main = {--Default Tanking,  dt 
        Ammo = 'Staunch Tathlum +1',
        Head = 'Null Masque',
        Neck = 'Elite Royal Collar',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Thureous Earring',
        Body = 'Chev. Cuirass +2',
        Hands = 'Chev. Gauntlets +2',
        Ring1 = 'Moonlight Ring',
        Ring2 = 'Moonlight Ring',
        Back = 'Rudianos\'s Mantle',
        Waist = 'Plat. Mog. Belt',
        Legs = 'Chev. Cuisses +2',
        Feet = 'Rev. Leggings +3',
        },
    Tank_MEVA = {
        Ammo = 'Staunch Tathlum +1', --Vanir Battery alternative
        Head = 'Null Masque',
        Neck = 'Moonlight Necklace',
        Ear1 = 'Eabani Earring',
        Ear2 = 'Infused Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Vengeful Ring',
        Ring2 = 'Vexer Ring +1',
        Back = 'Null Shawl',
        Waist = 'Null Belt',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
		},

    Precast = {--69 w/o Loquac due to HP drop
        Head = 'Carmine Mask +1',--14
        Neck = 'Voltsurge Torque', --4
        Ear2 = 'Tuisto Earring',
        Ammo = 'Incantor Stone', --2
		Ear1 = 'Enchntr. Earring +1', --2
		Ear2 = 'Etiolation Earring',
        Body = 'Rev. Surcoat +3',--10
        Hands = 'Leyline Gloves',--7
        Ring2 = 'Medada\'s Ring', --10
		Ring1 = 'Lebeche Ring',--4
        Waist = 'Plat. Mog. Belt',
        Legs = 'Eschite Cuisses',--5
        Feet = 'Chev. Sabatons +2',--10
    },
    
    SIR = {--0 merits,111 gear
        Ammo = 'Staunch Tathlum +1', -- 11
        Head = 'Souv. Schaller +1', --20
        Neck = 'Moonlight Necklace', -- 15
       	Body = 'Chev. Cuirass +2', -- 15
        Legs = 'Founder\'s Hose', -- 30
        Feet = 'Odyssean Greaves', -- 20
		Ring1 = 'Moonlight Ring',
        Ring2 = 'Moonlight Ring',				
    },
    Enmity = {
        Head = 'Souv. Schaller +1',--9
        Neck = 'Moonlight Necklace', -- 15
        Ammo = 'Paeapua', --2
		Body = 'Souv. Cuirass +1',--20
        Ring1 = 'Supershear Ring',--5
        Ring2 = 'Apeile ring +1',--5-9
        Ear1 = 'Friomisi Earring',--2
        Ear2 = 'Cryptic Earring',--4
        Back = 'Rudianos\'s Mantle', --10
        Waist = 'Creed Baudrier',--5
        Legs = 'Souv. Diechlings +1',--9
        Feet = 'Souveran Schuhs +1',--9
    },

    Cure = {
        Ammo = 'Staunch Tathlum +1',
        Head = 'Souv. Schaller +1', --15rec
        Neck = 'Sacro Gorget', -- 15
        Body = 'Jumalik Mail',
		Hands = 'Souv. Handsch. +1',
		Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Tuisto Earring',
		Ring1 = 'Moonlight Ring',
		Ring2 = 'Moonlight Ring',
        Back = 'Solemnity Cape', 
        Legs = 'Souv. Diechlings +1',
        Feet = 'Souveran Schuhs +1', -- 7
    },
    Phalanx = {
        Main = 'Sakpata\'s Sword', --5
		Sub = 'Priwen', --5
		Head = 'Yorium Barbuta', --3
        Neck = 'Incanter\'s Torque', 
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Andoaa Earring',
        Body = 'Yorium Cuirass', -- 3
        Hands = 'Souv. Handsch. +1', --5
        Back = 'Weard Mantle', --3
		Ring1 = 'Stikini Ring +1',
        Ring2 = 'Stikini Ring +1',
        Waist = 'Olympus Sash',
		Legs = 'Sakpata\'s Cuisses', --5
        Feet = 'Souveran Schuhs +1', --5
    },
	Enlight = {
        Main = 'Brilliance', --15
		Head = 'Jumalik Helm', --20
        Neck = 'Incanter\'s Torque', -- 10
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Divine Earring', -- 3
        Body = 'Rev. Surcoat +3', -- 15
        Hands = 'Eschite Gauntlets', -- 20
		Back = 'Altruistic Cape', --5
		Ring1 = 'Stikini Ring +1', --8
        Ring2 = 'Stikini Ring +1', --8
		Waist = 'Flume Belt +1', 
    },
    Reprisal = {
        Head = 'Null Masque',
        Neck = 'Moonlight Necklace', -- 15
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Cryptic Earring',
        Body = 'Shab. Cuirass +1',
        Ring1 = 'Moonlight Ring',
        Ring2 = 'Moonlight Ring',
        Feet = 'Chev. Sabatons +2',
		Back = 'Rudianos\'s Mantle',
        Waist = 'Cornelia\'s Belt',
		Legs = 'Rev. Breeches +3',
        Feet = 'Odyssean Greaves',
	},
	Crusade = {
        Ammo = 'Staunch Tathlum +1', -- 11
        Head = 'Souv. Schaller +1', --20
        Neck = 'Moonlight Necklace', -- 15
        Ear1 = 'Tuisto Earring',
		Ear2 = 'Odnowa Earring +1', --10
		Body = 'Chev. Cuirass +2', -- 15
        Ring1 = 'Moonlight Ring',
        Ring2 = 'Moonlight Ring',
		Legs = 'Founder\'s Hose', -- 30
        Feet = 'Odyssean Greaves', -- 20
	},
    Flash = {
        Ammo = 'Staunch Tathlum +1',
        Head = 'Souv. Schaller +1',
        Neck = 'Moonlight Necklace', -- 15
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Cryptic Earring',
        Body = 'Souv. Cuirass +1',
        Ring1 = 'Eihwaz Ring',
        Ring2 = 'Apeile Ring +1',
        Back = 'Rudianos\'s Mantle',
        Waist = 'Creed Baudrier',
        Legs = 'Souv. Diechlings +1',
        Feet = 'Souveran Schuhs +1',
    },

    Preshot = {},
    Midshot = {
        Ear1 = 'Telos Earring',
        Ear2 = 'Crep. Earring',
    },

    Ws_Default = {
        Ammo = 'Oshasha\'s Treatise',
        Head = 'Sakpata\'s Helm',
        Neck = 'Fotia Gorget',
        Ear1 = 'Telos Earring',
        Ear2 = 'Cessance Earring',
        Body = 'Sakpata\'s Plate',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Chirich Ring +1',
        Ring2 = 'Chirich Ring +1',
        Back = 'Phalangite mantle',
        Waist = 'Fotia Belt',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Sakpata\'s Leggings',
    },
    Ws_Hybrid = {
    },
    Ws_Acc = {
    },
    Chant_Default = {
        Ammo = 'Jukukik Feather',
        Head = 'Flamma Zucchetto +2',
        Ear1 = 'Cessance Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Flamma Korazin +2',
        Hands = 'Flam. Manopolas +2',
        Legs = 'Flamma Dirs +2',
		Ring1 = 'Moonlight Ring',
		Ring2 = 'Moonlight Ring',
        Back = 'Rudianos\'s Mantle',
        Feet = 'Flam. Gambieras +2 ',
		Neck = 'Null Loop',
    },
    Chant_Hybrid = {
    },
    Chant_Acc = {
    },
    Savage_Default = {
        Head = 'Sakpata\'s Helm',
        Neck = 'Asperity Necklace',
        Ear1 = 'Telos Earring',
        Ear2 = 'Moonshade Earring',
        Body = 'Sakpata\'s Plate',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Petrov Ring',
        Ring2 = 'Moonlight Ring',
        Waist = 'Sailfi Belt +1',
		Back = 'Null Shawl',
        Legs = 'Sakpata\'s Cuisses',
        Feet = 'Sakpata\'s Leggings',
    },
    Savage_Hybrid = {
    },
    Savage_Acc = {
    },
    Atone_Default = {
        Ammo = 'Staunch Tathlum +1',
        Head = 'Souv. Schaller +1',
        Neck = 'Moonlight Necklace', -- 15
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Cryptic Earring',
        Body = 'Souv. Cuirass +1',
        Hands = 'Sakpata\'s Gauntlets',
        Ring1 = 'Eihwaz Ring',
        Ring2 = 'Supershear Ring',
        Back = 'Rudianos\'s Mantle',
        Waist = 'Creed Baudrier',
        Legs = 'Souv. Diechlings +1',
        Feet = 'Souveran Schuhs +1',
    },
    Atone_Hybrid = {
    },
    Atone_Acc = {
    },
    Aedge_Default = {
        Ammo = 'Pemphredo Tathlum',
        Head = 'Nyame Helm',
        Neck = 'Baetyl Pendant',
        Ear1 = 'Friomisi Earring',
        Ear2 = 'Crematio Earring',
        Body = 'Nyame Mail',
        Hands = 'Nyame Gauntlets',
        Ring1 = 'Shiva Ring +1',
        Ring2 = 'Karieyh Ring +1',
        Waist = 'Eschan Stone',
        Legs = 'Nyame Flanchard',
        Feet = 'Nyame Sollerets',
    },
    Aedge_Hybrid = {},
    Aedge_Acc = {},

    Fealty = {
        Body = 'Cab. Surcoat +2',
    },
    Sentinel = {
        Feet = 'Cab. Leggings +3',
    },
	HolyCircle = {
        Feet = 'Rev. Leggings +3',
    },
    Bash = {
        Hands = 'Cab. Gauntlets +2',
		Ear2 = 'Knightly Earring',
    },
    Invincible = {
        Legs = 'Cab. Breeches +2',
    },
    Cover = {
        Body = 'Cab. Surcoat +2',
        Head = 'Rev. Coronet +2',
    },
    Rampart = {
        Head = 'Cab. Coronet +2',
    },
    
    TH = {
        Ammo = 'Per. Lucky Egg',
		Waist = 'Chaac Belt',
		Head = 'Wh. Rarab Cap +1',
		Body = 'Odyss. Chestplate',
	},
    Movement = {
        Ammo = 'Staunch Tathlum +1',
        Head = 'Null Masque',
        Neck ='Elite Royal Collar',
        Ear1 = 'Odnowa Earring +1',
        Ear2 = 'Tuisto Earring',
        Body = 'Chev. Cuirass +2',
        Hands = 'Chev. Gauntlets +2',
        Ring1 = 'Moonlight Ring',
        Ring2 = 'Moonlight Ring',
        Back = 'Rudianos\'s Mantle',
		Waist = 'Flume Belt +1',
        Legs = 'Carmine Cuisses +1',
        Feet = 'Chev. Sabatons +2',
	},
};
profile.Sets = sets;

profile.Packer = {
    {Name = 'Om. Sandwich', Quantity = 'all'},
    {Name = 'Black Curry Bun', Quantity = 'all'},
};

profile.OnLoad = function()
	gSettings.AllowAddSet = true;
    gcinclude.Initialize();

    AshitaCore:GetChatManager():QueueCommand(1, '/macro book 2');
    AshitaCore:GetChatManager():QueueCommand(1, '/macro set 1');
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
        if (gcdisplay.GetCycle('TankSet') ~= 'None') then
			gFunc.EquipSet('Tank_' .. gcdisplay.GetCycle('TankSet')) end
    elseif (player.Status == 'Resting') then
        gFunc.EquipSet(sets.Resting);
    elseif (player.IsMoving == true) then
		gFunc.EquipSet(sets.Movement);
    end
	
	    if gData.GetBuffCount('Silence') > 0 then
        AshitaCore:GetChatManager():QueueCommand(1, '/item "Echo Drops" <me>')
	end
	
    local cover = gData.GetBuffCount('Cover');
	if (cover >= 1) then
		gFunc.EquipSet(sets.Fealty); -- same set as fealty
	end
	
    gcinclude.CheckDefault ();
    if (gcdisplay.GetToggle('DTset') == true) then gFunc.EquipSet(sets.Dt) end;
    if (gcdisplay.GetToggle('Kite') == true) then gFunc.EquipSet(sets.Movement) end;
end

profile.HandleAbility = function()
    local ability = gData.GetAction();
    gFunc.EquipSet(sets.Enmity)
	if string.match(ability.Name, 'Fealty') then
		gFunc.EquipSet(sets.Fealty);
    elseif string.match(ability.Name, 'Sentinel') then
		gFunc.EquipSet(sets.Sentinel);
    elseif string.match(ability.Name, 'Shield Bash') or string.match(ability.Name, 'Chivalry') then
		gFunc.EquipSet(sets.Bash);
    elseif string.match(ability.Name, 'Invincible') then
		gFunc.EquipSet(sets.Invincible);
	elseif string.match(ability.Name, 'Holy Circle') then
		gFunc.EquipSet(sets.HolyCircle);	
    elseif string.match(ability.Name, 'Cover') then
		gFunc.EquipSet(sets.Cover);
    elseif string.match(ability.Name, 'Rampart') then
		gFunc.EquipSet(sets.Rampart);
	elseif string.match(ability.Name, 'Chivalry') then
		gFunc.EquipSet(sets.Chivalry);	
	elseif string.match(ability.Name, 'Divine Emblem') then	
		gFunc.EquipSet(sets.Divine_Emblem);
	end

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
    elseif (spell.Skill == 'Healing Magic') then
        gFunc.EquipSet(sets.Cure_Precast);
    end

    gcinclude.CheckCancels();
end

profile.HandleMidcast = function()
    local spell = gData.GetAction();
    gFunc.EquipSet(sets.SIR);

    if string.contains(spell.Name, 'Cur') then
        gFunc.EquipSet(sets.Cure);
    elseif string.match(spell.Name, 'Phalanx') then
        gFunc.EquipSet(sets.Phalanx);
    elseif string.match(spell.Name, 'Reprisal') then
        gFunc.EquipSet(sets.Reprisal);
	elseif string.match(spell.Name, 'Crusade') then
        gFunc.EquipSet(sets.Crusade);	
	elseif string.match(spell.Name, 'Prote') then
        gFunc.EquipSet(sets.Crusade);
	elseif string.match(spell.Name, 'Enli') then
        gFunc.EquipSet(sets.Enlight);
        return;--dont want to override this with SIR even with SIR toggle
    elseif string.match(spell.Name, 'Flash') then
        gFunc.EquipSet(sets.Flash);
    else
        gFunc.EquipSet(sets.Enmity);
    end

    if (gcdisplay.GetToggle('SIR') == true) then
        gFunc.EquipSet(sets.SIR);
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
   
        if string.match(ws.Name, 'Chant du Cygne') then
            gFunc.EquipSet(sets.Chant_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Chant_' .. gcdisplay.GetCycle('MeleeSet')); end
	    elseif string.match(ws.Name, 'Savage Blade') or string.match(ws.Name, 'Knights of Round') then
            gFunc.EquipSet(sets.Savage_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Savage_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Atonement') then
            gFunc.EquipSet(sets.Atone_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Atone_' .. gcdisplay.GetCycle('MeleeSet')); end
        elseif string.match(ws.Name, 'Aeolian Edge') then
            gFunc.EquipSet(sets.Aedge_Default)
            if (gcdisplay.GetCycle('MeleeSet') ~= 'Default') then
            gFunc.EquipSet('Aedge_' .. gcdisplay.GetCycle('MeleeSet')); end
        end
    end
end

return profile;
