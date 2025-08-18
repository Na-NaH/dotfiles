local deband_enabled = false

-- Toggle deband
mp.add_key_binding("d", "toggle-deband", function()
    deband_enabled = not deband_enabled
    mp.set_property_bool("deband", deband_enabled)
    mp.osd_message("Deband: " .. (deband_enabled and "ON" or "OFF"))
end)

-- When a new file starts, apply the current deband state
mp.register_event("file-loaded", function()
    mp.set_property_bool("deband", deband_enabled)
end)
