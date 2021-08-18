for index, tech in pairs(data.raw.technology) do
	local multi = 0
	for index, tech in pairs(tech.unit.ingredients) do
		multi = index + 1
	end
	if (multi < 1) then
		if (multi < 0) then
			tech.unit.time = tech.unit.time * multi * -1
		end
	else
		tech.unit.time = tech.unit.time * multi
	end

	local newTable = {}
	for key, value in pairs(tech.unit.ingredients) do
		if (value[1] ~= "basic-tech-card" and value[1] ~= nil) then
			table.insert(newTable, { value[1], 1})
		end
	end
	tech.unit.ingredients = newTable		
end

