require('common');

local settings = T{ };
settings["padding"] = T{ };
settings["is_open"] = T{ };
settings["override_background_color"] = T{ };
settings["show_border"] = T{ };
settings["docking"] = T{ };
settings["color_keyitem_have"] = T{ };
settings["color_background"] = T{ };
settings["color_keyitem_missing"] = T{ };
settings["opacity"] = T{ };
settings["padding"][1] = 130;
settings["padding"][2] = 152;
settings["is_open"][1] = true;
settings["override_background_color"][1] = false;
settings["show_border"][1] = true;
settings["docking"][1] = 0;
settings["color_keyitem_have"][1] = 0;
settings["color_keyitem_have"][2] = 1;
settings["color_keyitem_have"][3] = 0.10000000149011612;
settings["color_keyitem_have"][4] = 1;
settings["color_background"][1] = 0;
settings["color_background"][2] = 0;
settings["color_background"][3] = 0;
settings["color_background"][4] = 0;
settings["color_keyitem_missing"][1] = 1;
settings["color_keyitem_missing"][2] = 0.30000001192092896;
settings["color_keyitem_missing"][3] = 0.30000001192092896;
settings["color_keyitem_missing"][4] = 1;
settings["opacity"][1] = 0.60000002384185791;

return settings;
