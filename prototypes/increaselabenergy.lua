for index, lab in pairs(data.raw["lab"]) do
if lab.energy_source.type  == "electric" then
lab.energy_usage = ((settings.startup["Energy_consumption_m"].value * string.sub(lab.energy_usage,0, string.len(lab.energy_usage)-2)) .. "kW")
else
if lab.energy_source.type == "burner" or lab.energy_source.type == "fluid" then --discourage the player from using this
lab.energy_source.effectivity = lab.energy_source.effectivity
lab.energy_usage = (((settings.startup["Energy_consumption_m"].value / 4) * string.sub(lab.energy_usage,0, string.len(lab.energy_usage)-2)) .. "kW")
lab.researching_speed = lab.researching_speed
else
if lab.energy_source.type == "heat" then --no idea if this makes sense or will ever be used
lab.energy_source.max_transfer = lab.energy_source.max_transfer / 2
lab.energy_usage = (((settings.startup["Energy_consumption_m"].value / 2) * string.sub(lab.energy_usage,0, string.len(lab.energy_usage)-2)) .. "kW")
end
end
end
end