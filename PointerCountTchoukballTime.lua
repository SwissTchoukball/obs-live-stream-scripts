obs           = obslua
player1_labelname = ""
player2_labelname = ""
period_labelname = ""
Player1Count = 0
Player2Count = 0
PeriodCount = 0

last_text     = ""
stop_text     = ""
activated     = false

hotkey_id     = obs.OBS_INVALID_HOTKEY_ID
hotkey_P1Inc     = obs.OBS_INVALID_HOTKEY_ID
hotkey_P1Dec     = obs.OBS_INVALID_HOTKEY_ID
hotkey_P2Inc     = obs.OBS_INVALID_HOTKEY_ID
hotkey_P2Dec     = obs.OBS_INVALID_HOTKEY_ID
hotkey_PeriodInc = obs.OBS_INVALID_HOTKEY_ID
hotkey_PeriodDec = obs.OBS_INVALID_HOTKEY_ID
-- Function to set the time text

function p1Inc(pressed)
	if not pressed then
		return
	end

	Player1Count = Player1Count + 1
	local text = string.format("%02d", Player1Count)
	local source = obs.obs_get_source_by_name(player1_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function p1Dec(pressed)
	if not pressed then
		return
	end

	Player1Count = Player1Count - 1
	local text = string.format("%02d", Player1Count)
	local source = obs.obs_get_source_by_name(player1_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function p2Inc(pressed)
	if not pressed then
		return
	end

	Player2Count = Player2Count + 1
	local text = string.format("%02d", Player2Count)
	local source = obs.obs_get_source_by_name(player2_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
end

function p2Dec(pressed)
	if not pressed then
		return
	end

	Player2Count = Player2Count - 1
	local text = string.format("%02d", Player2Count)
	local source = obs.obs_get_source_by_name(player2_labelname)
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

	Player1Count = 0
	Player2Count = 0
	PeriodCount = 0

	local text = string.format("%02d", Player1Count)
	local source = obs.obs_get_source_by_name(player1_labelname)
	if source ~= nil then
		local settings1 = obs.obs_data_create()
		obs.obs_data_set_string(settings1, "text", text)
		obs.obs_source_update(source, settings1)
		obs.obs_data_release(settings1)
		obs.obs_source_release(source)
	end
	text = string.format("%02d", Player2Count)
	source = obs.obs_get_source_by_name(player2_labelname)
	if source ~= nil then
		local settings2 = obs.obs_data_create()
		obs.obs_data_set_string(settings2, "text", text)
		obs.obs_source_update(source, settings2)
		obs.obs_data_release(settings2)
		obs.obs_source_release(source)
	end
	
	local text = string.format("%02d", PeriodCount)
	local source = obs.obs_get_source_by_name(period_labelname)
	if source ~= nil then
		local settings3 = obs.obs_data_create()
		obs.obs_data_set_string(settings3, "text", text)
		obs.obs_source_update(source, settings3)
		obs.obs_data_release(settings3)
		obs.obs_source_release(source)
	end
end

function reset_button_clicked(props, p)
	Player1Count = 0
	Player2Count = 0
	PeriodCount = 0
	local text = string.format("%02d", Player1Count)
	local source = obs.obs_get_source_by_name(player1_labelname)
	if source ~= nil then
		local settings1 = obs.obs_data_create()
		obs.obs_data_set_string(settings1, "text", text)
		obs.obs_source_update(source, settings1)
		obs.obs_data_release(settings1)
		obs.obs_source_release(source)
	end
	text = string.format("%02d", Player2Count)
	source = obs.obs_get_source_by_name(player2_labelname)
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
	return false
end


function p1Inc_button_clicked(props, p)
	Player1Count = Player1Count + 1
	local text = string.format("%02d", Player1Count)
	local source = obs.obs_get_source_by_name(player1_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

function p1Dec_button_clicked(props, p)
	Player1Count = Player1Count - 1
	local text = string.format("%02d", Player1Count)
	local source = obs.obs_get_source_by_name(player1_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

function p2Inc_button_clicked(props, p)
	Player2Count = Player2Count + 1
	local text = string.format("%02d", Player2Count)
	local source = obs.obs_get_source_by_name(player2_labelname)
	if source ~= nil then
		local settings = obs.obs_data_create()
		obs.obs_data_set_string(settings, "text", text)
		obs.obs_source_update(source, settings)
		obs.obs_data_release(settings)
		obs.obs_source_release(source)
	end
	return false
end

function p2Dec_button_clicked(props, p)
	Player2Count = Player2Count - 1
	local text = string.format("%02d", Player2Count)
	local source = obs.obs_get_source_by_name(player2_labelname)
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
	local p1 = obs.obs_properties_add_list(props, "P1Label", "Player 1 Label", obs.OBS_COMBO_TYPE_EDITABLE, obs.OBS_COMBO_FORMAT_STRING)
	local p2 = obs.obs_properties_add_list(props, "P2Label", "Player 2 Label", obs.OBS_COMBO_TYPE_EDITABLE, obs.OBS_COMBO_FORMAT_STRING)
	local period = obs.obs_properties_add_list(props, "PeriodLabel", "Period Label", obs.OBS_COMBO_TYPE_EDITABLE, obs.OBS_COMBO_FORMAT_STRING)
	local sources = obs.obs_enum_sources()
	if sources ~= nil then
		for _, source in ipairs(sources) do
			source_id = obs.obs_source_get_id(source)
			if source_id == "text_gdiplus" or source_id == "text_ft2_source" then
				local name = obs.obs_source_get_name(source)
				obs.obs_property_list_add_string(p1, name, name)
				obs.obs_property_list_add_string(p2, name, name)
				obs.obs_property_list_add_string(period, name, name)
			end
		end
	end
	obs.source_list_release(sources)
	obs.obs_properties_add_button(props, "reset_button", "Reset Timer", reset_button_clicked)
	obs.obs_properties_add_button(props, "P1Inc_button", "P1++", p1Inc_button_clicked)
	obs.obs_properties_add_button(props, "P1Dec_button", "P1--", p1Dec_button_clicked)
	obs.obs_properties_add_button(props, "P2Inc_button", "P2++", p2Inc_button_clicked)
	obs.obs_properties_add_button(props, "P2Dec_button", "P2--", p2Dec_button_clicked)
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
	player1_labelname = obs.obs_data_get_string(settings, "P1Label")
	player2_labelname = obs.obs_data_get_string(settings, "P2Label")
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
	
	local hotkey_save_array2 = obs.obs_hotkey_save(hotkey_P1Inc)
	obs.obs_data_set_array(settings, "Pointcounter.P1Inc", hotkey_save_array2)
	obs.obs_data_array_release(hotkey_save_array2)
	
	local hotkey_save_array3 = obs.obs_hotkey_save(hotkey_P1Dec)
	obs.obs_data_set_array(settings, "Pointcounter.P1Dec", hotkey_save_array3)
	obs.obs_data_array_release(hotkey_save_array3)
	
	local hotkey_save_array4 = obs.obs_hotkey_save(hotkey_P2Inc)
	obs.obs_data_set_array(settings, "Pointcounter.P2Inc", hotkey_save_array4)
	obs.obs_data_array_release(hotkey_save_array4)
	
	local hotkey_save_array5 = obs.obs_hotkey_save(hotkey_P2Dec)
	obs.obs_data_set_array(settings, "Pointcounter.P2Dec", hotkey_save_array5)
	obs.obs_data_array_release(hotkey_save_array5)
	
	local hotkey_save_array6 = obs.obs_hotkey_save(hotkey_PeriodInc)
	obs.obs_data_set_array(settings, "Pointcounter.PeriodInc", hotkey_save_array6)
	obs.obs_data_array_release(hotkey_save_array6)
	
	local hotkey_save_array7 = obs.obs_hotkey_save(hotkey_PeriodDec)
	obs.obs_data_set_array(settings, "Pointcounter.PeriodDec", hotkey_save_array7)
	obs.obs_data_array_release(hotkey_save_array7)
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
	hotkey_P1Inc = obs.obs_hotkey_register_frontend("Pointcounter.P1Inc", "Scorecounter-Player 1++", p1Inc)
	hotkey_P1Dec = obs.obs_hotkey_register_frontend("Pointcounter.P1Dec", "Scorecounter-Player 1--", p1Dec)
	hotkey_P2Inc = obs.obs_hotkey_register_frontend("Pointcounter.P2Inc", "Scorecounter-Player 2++", p2Inc)
	hotkey_P2Dec = obs.obs_hotkey_register_frontend("Pointcounter.P2Dec", "Scorecounter-Player 2--", p2Dec)
	hotkey_PeriodInc = obs.obs_hotkey_register_frontend("Pointcounter.PeriodInc", "Scorecounter-Period ++", periodInc)
	hotkey_PeriodDec = obs.obs_hotkey_register_frontend("Pointcounter.PeriodDec", "Scorecounter-Period --", periodDec)
	
	local hotkey_save_array = obs.obs_data_get_array(settings, "Pointcounter.Reset")
	obs.obs_hotkey_load(hotkey_id, hotkey_save_array)
	obs.obs_data_array_release(hotkey_save_array)
	
	local hotkey_save_array1 = obs.obs_data_get_array(settings, "Pointcounter.P1Inc")
	obs.obs_hotkey_load(hotkey_P1Inc, hotkey_save_array1)
	obs.obs_data_array_release(hotkey_save_array1)

	local hotkey_save_array2 = obs.obs_data_get_array(settings, "Pointcounter.P1Dec")
	obs.obs_hotkey_load(hotkey_P1Dec, hotkey_save_array2)
	obs.obs_data_array_release(hotkey_save_array2)
	
	local hotkey_save_array3 = obs.obs_data_get_array(settings, "Pointcounter.P2Inc")
	obs.obs_hotkey_load(hotkey_P2Inc, hotkey_save_array3)
	obs.obs_data_array_release(hotkey_save_array3)
	
	local hotkey_save_array4 = obs.obs_data_get_array(settings, "Pointcounter.P2Dec")
	obs.obs_hotkey_load(hotkey_P2Dec, hotkey_save_array4)
	obs.obs_data_array_release(hotkey_save_array4) 
	
	local hotkey_save_array5 = obs.obs_data_get_array(settings, "Pointcounter.PeriodInc")
	obs.obs_hotkey_load(hotkey_PeriodInc, hotkey_save_array5)
	obs.obs_data_array_release(hotkey_save_array5)
	
	local hotkey_save_array6 = obs.obs_data_get_array(settings, "Pointcounter.PeriodDec")
	obs.obs_hotkey_load(hotkey_PeriodDec, hotkey_save_array6)
	obs.obs_data_array_release(hotkey_save_array6) 
end
