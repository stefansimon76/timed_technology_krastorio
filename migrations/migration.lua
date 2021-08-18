for index, force in ipairs(game.forces) do
	local technologies = force.technologies;
	local recipes = force.recipes;
    if (mods["functioning-mod"] == false) then
	if settings.startup["Enable-recycling"].value then
	recipes["burner-mining-drill_recycle"].enabled = true
    recipes["burner-inserter_recycle"].enabled = true
    recipes["pistol_recycle"].enabled = true
    recipes["light_armor_recycle"].enabled = true
	end
	end
end