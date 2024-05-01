obs           = obslua
Team1_labelname = ""
Team2_labelname = ""
Team1Set_labelname = ""
Team2Set_labelname = ""
period_labelname = ""
Team1Count = 0
Team2Count = 0
Team1SetCount = 0
Team2SetCount = 0
PeriodCount = 0

last_text     = ""
stop_text     = ""
activated     = false

hotkey_id     = obs.OBS_INVALID_HOTKEY_ID
hotkey_T1Inc     = obs.OBS_INVALID_HOTKEY_ID
hotkey_T1Dec     = obs.OBS_INVALID_HOTKEY_ID
hotkey_T2Inc     = obs.OBS_INVALID_HOTKEY_ID
hotkey_T2Dec     = obs.OBS_INVALID_HOTKEY_ID
hotkey_ST1Inc     = obs.OBS_INVALID_HOTKEY_ID
hotkey_ST1Dec     = obs.OBS_INVALID_HOTKEY_ID
hotkey_ST2Inc     = obs.OBS_INVALID_HOTKEY_ID
hotkey_ST2Dec     = obs.OBS_INVALID_HOTKEY_ID
hotkey_PeriodInc = obs.OBS_INVALID_HOTKEY_ID
hotkey_PeriodDec = obs.OBS_INVALID_HOTKEY_ID
-- Function to set the time text

function t1Inc(pressed)
	if not pressed then
		return
	end

	Team1Count = Team1Count + 1
	local text = string.format("%02d", Team1Count)
	local source = obs.obs_get_source_by_name(Team1_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function t1Dec(pressed)
	if not pressed then
		return
	end

	Team1Count = Team1Count - 1
	local text = string.format("%02d", Team1Count)
	local source = obs.obs_get_source_by_name(Team1_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function st1Inc(pressed)
	if not pressed then
		return
	end

	Team1SetCount = Team1SetCount + 1
	local text = string.format("%02d", Team1SetCount)
	local source = obs.obs_get_source_by_name(Team1Set_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function st1Dec(pressed)
	if not pressed then
		return
	end

	Team1SetCount = Team1SetCount - 1
	local text = string.format("%02d", Team1SetCount)
	local source = obs.obs_get_source_by_name(Team1Set_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function t2Inc(pressed)
	if not pressed then
		return
	end

	Team2Count = Team2Count + 1
	local text = string.format("%02d", Team2Count)
	local source = obs.obs_get_source_by_name(Team2_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function t2Dec(pressed)
	if not pressed then
		return
	end

	Team2Count = Team2Count - 1
	local text = string.format("%02d", Team2Count)
	local source = obs.obs_get_source_by_name(Team2_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function st2Inc(pressed)
	if not pressed then
		return
	end

	Team2SetCount = Team2SetCount + 1
	local text = string.format("%02d", Team2SetCount)
	local source = obs.obs_get_source_by_name(Team2Set_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function st2Dec(pressed)
	if not pressed then
		return
	end

	Team2SetCount = Team2SetCount - 1
	local text = string.format("%02d", Team2SetCount)
	local source = obs.obs_get_source_by_name(Team2Set_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function periodInc(pressed)
	if not pressed then
		return
	end

	PeriodCount = PeriodCount + 1
	local text = string.format("%02d", PeriodCount)
	local source = obs.obs_get_source_by_name(period_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function periodDec(pressed)
	if not pressed then
		return
	end

	PeriodCount = PeriodCount - 1
	local text = string.format("%02d", PeriodCount)
	local source = obs.obs_get_source_by_name(period_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function reset(pressed)
	if not pressed then
		return
	end

	Team1Count = 0
	Team2Count = 0
	Team1SetCount = 0
	Team2SetCount = 0
	PeriodCount = 0

	local text = string.format("%02d", Team1Count)
	local source = obs.obs_get_source_by_name(Team1_labelname)
	if source ~= nil then
		local settings1 = obs.obs_data_create()
		obs.obs_data_set_string(settings1, "text", text)
		obs.obs_source_update(source, settings1)
		obs.obs_data_release(settings1)
		obs.obs_source_release(source)
	end
	text = string.format("%02d", Team2Count)
	source = obs.obs_get_source_by_name(Team2_labelname)
	if source ~= nil then
		local settings2 = obs.obs_data_create()
		obs.obs_data_set_string(settings2, "text", text)
		obs.obs_source_update(source, settings2)
		obs.obs_data_release(settings2)
		obs.obs_source_release(source)
	end
	
	text = string.format("%02d", PeriodCount)
	source = obs.obs_get_source_by_name(period_labelname)
	if source ~= nil then
		local settings3 = obs.obs_data_create()
		obs.obs_data_set_string(settings3, "text", text)
		obs.obs_source_update(source, settings3)
		obs.obs_data_release(settings3)
		obs.obs_source_release(source)
	end
	
	text = string.format("%02d", Team1SetCount)
	source = obs.obs_get_source_by_name(Team1Set_labelname)
	if source ~= nil then
		local settings4 = obs.obs_data_create()
		obs.obs_data_set_string(settings4, "text", text)
		obs.obs_source_update(source, settings4)
		obs.obs_data_release(settings4)
		obs.obs_source_release(source)
	end
	
	text = string.format("%02d", Team2SetCount)
	source = obs.obs_get_source_by_name(Team2Set_labelname)
	if source ~= nil then
		local settings5 = obs.obs_data_create()
		obs.obs_data_set_string(settings5, "text", text)
		obs.obs_source_update(source, settings5)
		obs.obs_data_release(settings5)
		obs.obs_source_release(source)
	end
	
	
end

function reset_button_clicked(props, p)
	Team1Count = 0
	Team2Count = 0
	Team1SetCount = 0
	Team2SetCount = 0
	PeriodCount = 0
	local text = string.format("%02d", Team1Count)
	local source = obs.obs_get_source_by_name(Team1_labelname)
	if source ~= nil then
		local settings1 = obs.obs_data_create()
		obs.obs_data_set_string(settings1, "text", text)
		obs.obs_source_update(source, settings1)
		obs.obs_data_release(settings1)
		obs.obs_source_release(source)
	end
	text = string.format("%02d", Team2Count)
	source = obs.obs_get_source_by_name(Team2_labelname)
	if source ~= nil then
		local settings2 = obs.obs_data_create()
		obs.obs_data_set_string(settings2, "text", text)
		obs.obs_source_update(source, settings2)
		obs.obs_data_release(settings2)
		obs.obs_source_release(source)
	end
	
	text = string.format("%02d", PeriodCount)
	source = obs.obs_get_source_by_name(period_labelname)
	if source ~= nil then
		local settings3 = obs.obs_data_create()
		obs.obs_data_set_string(settings3, "text", text)
		obs.obs_source_update(source, settings3)
		obs.obs_data_release(settings3)
		obs.obs_source_release(source)
	end
	
	text = string.format("%02d", Team1SetCount)
	source = obs.obs_get_source_by_name(Team1Set_labelname)
	if source ~= nil then
		local settings4 = obs.obs_data_create()
		obs.obs_data_set_string(settings4, "text", text)
		obs.obs_source_update(source, settings4)
		obs.obs_data_release(settings4)
		obs.obs_source_release(source)
	end
	
	text = string.format("%02d", Team2SetCount)
	source = obs.obs_get_source_by_name(Team2Set_labelname)
	if source ~= nil then
		local settings5 = obs.obs_data_create()
		obs.obs_data_set_string(settings5, "text", text)
		obs.obs_source_update(source, settings5)
		obs.obs_data_release(settings5)
		obs.obs_source_release(source)
	end
	
	return false
end


function t1Inc_button_clicked(props, p)
	Team1Count = Team1Count + 1
	local text = string.format("%02d", Team1Count)
	local source = obs.obs_get_source_by_name(Team1_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

function t1Dec_button_clicked(props, p)
	Team1Count = Team1Count - 1
	local text = string.format("%02d", Team1Count)
	local source = obs.obs_get_source_by_name(Team1_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

function st1Inc_button_clicked(props, p)
	Team1SetCount = Team1SetCount + 1
	local text = string.format("%02d", Team1SetCount)
	local source = obs.obs_get_source_by_name(Team1Set_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

function st1Dec_button_clicked(props, p)
	Team1SetCount = Team1SetCount - 1
	local text = string.format("%02d", Team1SetCount)
	local source = obs.obs_get_source_by_name(Team1Set_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

function t2Inc_button_clicked(props, p)
	Team2Count = Team2Count + 1
	local text = string.format("%02d", Team2Count)
	local source = obs.obs_get_source_by_name(Team2_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

function t2Dec_button_clicked(props, p)
	Team2Count = Team2Count - 1
	local text = string.format("%02d", Team2Count)
	local source = obs.obs_get_source_by_name(Team2_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

function st2Inc_button_clicked(props, p)
	Team2SetCount = Team2SetCount + 1
	local text = string.format("%02d", Team2SetCount)
	local source = obs.obs_get_source_by_name(Team2Set_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

function st2Dec_button_clicked(props, p)
	Team2SetCount = Team2SetCount - 1
	local text = string.format("%02d", Team2SetCount)
	local source = obs.obs_get_source_by_name(Team2Set_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

function periodInc_button_clicked(props, p)
	PeriodCount = PeriodCount + 1
	local text = string.format("%02d", PeriodCount)
	local source = obs.obs_get_source_by_name(period_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

function periodDec_button_clicked(props, p)
	PeriodCount = PeriodCount - 1
	local text = string.format("%02d", PeriodCount)
	local source = obs.obs_get_source_by_name(period_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

----------------------------------------------------------

-- A function named script_properties defines the properties that the user
-- can change for the entire script module itself
function script_properties()
	local props = obs.obs_properties_create()
	local t1 = obs.obs_properties_add_list(props, "T1Label", "Team 1 Label", obs.OBS_COMBO_TYPE_EDITABLE, obs.OBS_COMBO_FORMAT_STRING)
	local t2 = obs.obs_properties_add_list(props, "T2Label", "Team 2 Label", obs.OBS_COMBO_TYPE_EDITABLE, obs.OBS_COMBO_FORMAT_STRING)
	local st1 = obs.obs_properties_add_list(props, "ST1Label", "Team 1 Set Label", obs.OBS_COMBO_TYPE_EDITABLE, obs.OBS_COMBO_FORMAT_STRING)
	local st2 = obs.obs_properties_add_list(props, "ST2Label", "Team 2 Set Label", obs.OBS_COMBO_TYPE_EDITABLE, obs.OBS_COMBO_FORMAT_STRING)
	local period = obs.obs_properties_add_list(props, "PeriodLabel", "Period Label", obs.OBS_COMBO_TYPE_EDITABLE, obs.OBS_COMBO_FORMAT_STRING)
	local sources = obs.obs_enum_sources()
	if sources ~= nil then
		for _, source in ipairs(sources) do
			source_id = obs.obs_source_get_id(source)
			if source_id == "text_gdiplus" or source_id == "text_ft2_source" then
				local name = obs.obs_source_get_name(source)
				obs.obs_property_list_add_string(t1, name, name)
				obs.obs_property_list_add_string(t2, name, name)
				obs.obs_property_list_add_string(st1, name, name)
				obs.obs_property_list_add_string(st2, name, name)
				obs.obs_property_list_add_string(period, name, name)
			end
		end
	end
	obs.source_list_release(sources)
	obs.obs_properties_add_button(props, "reset_button", "Reset Timer", reset_button_clicked)
	obs.obs_properties_add_button(props, "T1Inc_button", "T1++", t1Inc_button_clicked)
	obs.obs_properties_add_button(props, "T1Dec_button", "T1--", t1Dec_button_clicked)
	obs.obs_properties_add_button(props, "T2Inc_button", "T2++", t2Inc_button_clicked)
	obs.obs_properties_add_button(props, "T2Dec_button", "T2--", t2Dec_button_clicked)
	obs.obs_properties_add_button(props, "ST1Inc_button", "ST1++", st1Inc_button_clicked)
	obs.obs_properties_add_button(props, "ST1Dec_button", "ST1--", st1Dec_button_clicked)
	obs.obs_properties_add_button(props, "ST2Inc_button", "ST2++", st2Inc_button_clicked)
	obs.obs_properties_add_button(props, "ST2Dec_button", "ST2--", st2Dec_button_clicked)
	obs.obs_properties_add_button(props, "PeriodInc_button", "Period++", periodInc_button_clicked)
	obs.obs_properties_add_button(props, "PeriodDec_button", "Period--", periodDec_button_clicked)
	return props
end

-- A function named script_description returns the description shown to
-- the user
function script_description()
	return "Mit Hilfe dieses Script kann man per Hotkeys einen Punktezähler für zwei Spieler steuern.\n\nMade by evildox"
end

-- A function named script_update will be called when settings are changed
function script_update(settings)
	Team1_labelname = obs.obs_data_get_string(settings, "T1Label")
	Team2_labelname = obs.obs_data_get_string(settings, "T2Label")
	Team1Set_labelname = obs.obs_data_get_string(settings, "ST1Label")
	Team2Set_labelname = obs.obs_data_get_string(settings, "ST2Label")
	period_labelname = obs.obs_data_get_string(settings, "PeriodLabel")

	reset(true)
end

-- A function named script_defaults will be called to set the default settings
function script_defaults(settings)

end

-- A function named script_save will be called when the script is saved
--
-- NOTE: This function is usually used for saving extra data (such as in this
-- case, a hotkey's save data).  Settings set via the properties are saved
-- automatically.
function script_save(settings)
	local hotkey_save_array = obs.obs_hotkey_save(hotkey_id)
	obs.obs_data_set_array(settings, "Pointcounter.Reset", hotkey_save_array)
	obs.obs_data_array_release(hotkey_save_array)
	
	local hotkey_save_array2 = obs.obs_hotkey_save(hotkey_T1Inc)
	obs.obs_data_set_array(settings, "Pointcounter.T1Inc", hotkey_save_array2)
	obs.obs_data_array_release(hotkey_save_array2)
	
	local hotkey_save_array3 = obs.obs_hotkey_save(hotkey_T1Dec)
	obs.obs_data_set_array(settings, "Pointcounter.T1Dec", hotkey_save_array3)
	obs.obs_data_array_release(hotkey_save_array3)
	
	local hotkey_save_array4 = obs.obs_hotkey_save(hotkey_T2Inc)
	obs.obs_data_set_array(settings, "Pointcounter.T2Inc", hotkey_save_array4)
	obs.obs_data_array_release(hotkey_save_array4)
	
	local hotkey_save_array5 = obs.obs_hotkey_save(hotkey_T2Dec)
	obs.obs_data_set_array(settings, "Pointcounter.T2Dec", hotkey_save_array5)
	obs.obs_data_array_release(hotkey_save_array5)
	
	local hotkey_save_array6 = obs.obs_hotkey_save(hotkey_PeriodInc)
	obs.obs_data_set_array(settings, "Pointcounter.PeriodInc", hotkey_save_array6)
	obs.obs_data_array_release(hotkey_save_array6)
	
	local hotkey_save_array7 = obs.obs_hotkey_save(hotkey_PeriodDec)
	obs.obs_data_set_array(settings, "Pointcounter.PeriodDec", hotkey_save_array7)
	obs.obs_data_array_release(hotkey_save_array7)
	
	local hotkey_save_array8 = obs.obs_hotkey_save(hotkey_ST1Inc)
	obs.obs_data_set_array(settings, "Pointcounter.ST1Inc", hotkey_save_array8)
	obs.obs_data_array_release(hotkey_save_array8)
	
	local hotkey_save_array9 = obs.obs_hotkey_save(hotkey_ST1Dec)
	obs.obs_data_set_array(settings, "Pointcounter.ST1Dec", hotkey_save_array9)
	obs.obs_data_array_release(hotkey_save_array9)
	
	local hotkey_save_array10 = obs.obs_hotkey_save(hotkey_ST2Inc)
	obs.obs_data_set_array(settings, "Pointcounter.ST2Inc", hotkey_save_array10)
	obs.obs_data_array_release(hotkey_save_array10)
	
	local hotkey_save_array11 = obs.obs_hotkey_save(hotkey_ST2Dec)
	obs.obs_data_set_array(settings, "Pointcounter.ST2Dec", hotkey_save_array11)
	obs.obs_data_array_release(hotkey_save_array11)
end

-- a function named script_load will be called on startup
function script_load(settings)
	-- Connect hotkey and activation/deactivation signal callbacks
	--
	-- NOTE: These particular script callbacks do not necessarily have to
	-- be disconnected, as callbacks will automatically destroy themselves
	-- if the script is unloaded.  So there's no real need to manually
	-- disconnect callbacks that are intended to last until the script is
	-- unloaded.
	local sh = obs.obs_get_signal_handler()
	obs.signal_handler_connect(sh, "source_activate", source_activated)
	obs.signal_handler_connect(sh, "source_deactivate", source_deactivated)

	hotkey_id = obs.obs_hotkey_register_frontend("Pointcounter.Reset", "Scorecounter-Reset", reset)
	hotkey_T1Inc = obs.obs_hotkey_register_frontend("Pointcounter.T1Inc", "Scorecounter-Team 1++", t1Inc)
	hotkey_T1Dec = obs.obs_hotkey_register_frontend("Pointcounter.T1Dec", "Scorecounter-Team 1--", t1Dec)
	hotkey_T2Inc = obs.obs_hotkey_register_frontend("Pointcounter.T2Inc", "Scorecounter-Team 2++", t2Inc)
	hotkey_T2Dec = obs.obs_hotkey_register_frontend("Pointcounter.T2Dec", "Scorecounter-Team 2--", t2Dec)
	hotkey_ST1Inc = obs.obs_hotkey_register_frontend("Pointcounter.ST1Inc", "Scorecounter-SetTeam 1++", st1Inc)
	hotkey_ST1Dec = obs.obs_hotkey_register_frontend("Pointcounter.ST1Dec", "Scorecounter-SetTeam 1--", st1Dec)
	hotkey_ST2Inc = obs.obs_hotkey_register_frontend("Pointcounter.ST2Inc", "Scorecounter-SetTeam 2++", st2Inc)
	hotkey_ST2Dec = obs.obs_hotkey_register_frontend("Pointcounter.ST2Dec", "Scorecounter-SetTeam 2--", st2Dec)
	hotkey_PeriodInc = obs.obs_hotkey_register_frontend("Pointcounter.PeriodInc", "Scorecounter-Period ++", periodInc)
	hotkey_PeriodDec = obs.obs_hotkey_register_frontend("Pointcounter.PeriodDec", "Scorecounter-Period --", periodDec)
	
	local hotkey_save_array = obs.obs_data_get_array(settings, "Pointcounter.Reset")
	obs.obs_hotkey_load(hotkey_id, hotkey_save_array)
	obs.obs_data_array_release(hotkey_save_array)
	
	local hotkey_save_array1 = obs.obs_data_get_array(settings, "Pointcounter.T1Inc")
	obs.obs_hotkey_load(hotkey_T1Inc, hotkey_save_array1)
	obs.obs_data_array_release(hotkey_save_array1)

	local hotkey_save_array2 = obs.obs_data_get_array(settings, "Pointcounter.T1Dec")
	obs.obs_hotkey_load(hotkey_T1Dec, hotkey_save_array2)
	obs.obs_data_array_release(hotkey_save_array2)
	
	local hotkey_save_array3 = obs.obs_data_get_array(settings, "Pointcounter.T2Inc")
	obs.obs_hotkey_load(hotkey_T2Inc, hotkey_save_array3)
	obs.obs_data_array_release(hotkey_save_array3)
	
	local hotkey_save_array4 = obs.obs_data_get_array(settings, "Pointcounter.T2Dec")
	obs.obs_hotkey_load(hotkey_T2Dec, hotkey_save_array4)
	obs.obs_data_array_release(hotkey_save_array4) 
	
	local hotkey_save_array5 = obs.obs_data_get_array(settings, "Pointcounter.PeriodInc")
	obs.obs_hotkey_load(hotkey_PeriodInc, hotkey_save_array5)
	obs.obs_data_array_release(hotkey_save_array5)
	
	local hotkey_save_array6 = obs.obs_data_get_array(settings, "Pointcounter.PeriodDec")
	obs.obs_hotkey_load(hotkey_PeriodDec, hotkey_save_array6)
	obs.obs_data_array_release(hotkey_save_array6) 
	
	local hotkey_save_array7 = obs.obs_data_get_array(settings, "Pointcounter.ST1Inc")
	obs.obs_hotkey_load(hotkey_ST1Inc, hotkey_save_array7)
	obs.obs_data_array_release(hotkey_save_array7)

	local hotkey_save_array8 = obs.obs_data_get_array(settings, "Pointcounter.ST1Dec")
	obs.obs_hotkey_load(hotkey_ST1Dec, hotkey_save_array8)
	obs.obs_data_array_release(hotkey_save_array8)
	
	local hotkey_save_array9 = obs.obs_data_get_array(settings, "Pointcounter.ST2Inc")
	obs.obs_hotkey_load(hotkey_ST2Inc, hotkey_save_array9)
	obs.obs_data_array_release(hotkey_save_array9)
	
	local hotkey_save_array10 = obs.obs_data_get_array(settings, "Pointcounter.ST2Dec")
	obs.obs_hotkey_load(hotkey_ST2Dec, hotkey_save_array10)
	obs.obs_data_array_release(hotkey_save_array10) 
end
