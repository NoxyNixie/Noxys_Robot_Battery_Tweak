local joules = require("joules")

local robots = {"logistic-robot", "construction-robot"}

local mul = settings.startup["Noxys_Robot_Battery_Tweak-multiplier"].value

for _,r in pairs(robots) do
	for _,v in pairs(data.raw[r]) do
		v.max_energy = joules.to(joules.from(v.max_energy) * mul, "M")
	end
end
