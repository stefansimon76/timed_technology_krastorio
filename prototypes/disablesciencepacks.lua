function disablescience(item1)
  if data.raw.recipe[item1] then
  data.raw.recipe[item1].hidden = true
  data.raw.recipe[item1].enabled = false
  end
end
disablescience("basic-tech-card")
