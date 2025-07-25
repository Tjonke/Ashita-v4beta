require('common');

local settings = T{ };
settings["hide_on_event"] = T{ };
settings["token_enabled_assault"] = T{ };
settings["compact"] = T{ };
settings["compact"]["font"] = T{ };
settings["use_job_icon"] = T{ };
settings["token_enabled_mastered"] = T{ };
settings["colors"] = T{ };
settings["colors"]["cappedValue"] = T{ };
settings["colors"]["bg"] = T{ };
settings["colors"]["chainTimer"] = T{ };
settings["colors"]["mainText"] = T{ };
settings["colors"]["bgBorder"] = T{ };
settings["token_enabled_dynamis"] = T{ };
settings["token_enabled_voidwatch"] = T{ };
settings["token_enabled_abyssea"] = T{ };
settings["use_compact_ui"] = T{ };
settings["use_pbar_ascii"] = T{ };
settings["show_lphr"] = T{ };
settings["token_enabled_nyzul"] = T{ };
settings["hide_on_event"][1] = false;
settings["token_order_mastered"] = "[EP] [EPHour] [EPChain] [DIV] [CP] [JP] [JPHour] [CPChain] [DIV] [Sparks] [DIV] [Accolades] [DIV] [Gil]";
settings["token_enabled_assault"][1] = true;
settings["num_separator"] = "";
settings["token_order_dynamis"] = "[DynamisKI] [DIV] [EventTimer]";
settings["compact"]["hPadding"] = 8;
settings["compact"]["x"] = 0;
settings["compact"]["font"]["visible"] = true;
settings["compact"]["font"]["font_family"] = "Tahoma";
settings["compact"]["font"]["font_height"] = 11;
settings["compact"]["font"]["color"] = 4294967295;
settings["compact"]["y"] = -17;
settings["use_job_icon"][1] = true;
settings["bar_x"] = 1025;
settings["token_enabled_mastered"][1] = true;
settings["theme"] = "default";
settings["token_order_nyzul"] = "[NyzulFloor] [DIV] [NyzulObjective] [DIV] [EventTimer]";
settings["rate_reset_timer"] = 600;
settings["token_order_voidwatch"] = "[VWRed] [VWBlue] [VWGreen] [VWYellow] [VWWhite]";
settings["token_order_default"] = "[XP] [Merits] [XPHour] [XPChain] [DIV] [CP] [JP] [JPHour] [CPChain] [DIV] [Sparks] [DIV] [Accolades] [DIV] [Gil]";
settings["bar_y"] = 893;
settings["token_order_abyssea"] = "[Pearl] [Azure] [Ruby] [Amber] [Gold] [Silver] [Ebon] [DIV] [EventTimer]";
settings["token_order_assault"] = "[AssaultObjective] [DIV] [EventTimer]";
settings["colors"]["cappedValue"][1] = 0.23000000000000001;
settings["colors"]["cappedValue"][2] = 0.67000000000000004;
settings["colors"]["cappedValue"][3] = 0.91000000000000003;
settings["colors"]["cappedValue"][4] = 1;
settings["colors"]["bg"][1] = 0.080000000000000002;
settings["colors"]["bg"][2] = 0.080000000000000002;
settings["colors"]["bg"][3] = 0.080000000000000002;
settings["colors"]["bg"][4] = 0.80000000000000004;
settings["colors"]["chainTimer"][1] = 0.91000000000000003;
settings["colors"]["chainTimer"][2] = 0.91000000000000003;
settings["colors"]["chainTimer"][3] = 0.23000000000000001;
settings["colors"]["chainTimer"][4] = 1;
settings["colors"]["mainText"][1] = 1;
settings["colors"]["mainText"][2] = 1;
settings["colors"]["mainText"][3] = 1;
settings["colors"]["mainText"][4] = 1;
settings["colors"]["bgBorder"][1] = 0.68999999999999995;
settings["colors"]["bgBorder"][2] = 0.68000000000000005;
settings["colors"]["bgBorder"][3] = 0.78000000000000003;
settings["colors"]["bgBorder"][4] = 1;
settings["token_enabled_dynamis"][1] = true;
settings["compact_divider"] = "|";
settings["bar_divider"] = "";
settings["font_scale"] = 1;
settings["token_enabled_voidwatch"][1] = true;
settings["token_enabled_abyssea"][1] = true;
settings["use_compact_ui"][1] = false;
settings["use_pbar_ascii"][1] = false;
settings["show_lphr"][1] = true;
settings["token_enabled_nyzul"][1] = true;

return settings;
