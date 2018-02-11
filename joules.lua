local joules = {
	units = {
		y  = 1E-24,
		z  = 1E-21,
		a  = 1E-18,
		f  = 1E-15,
		p  = 1E-12,
		n  = 1E-9,
		u  = 1E-6,
		m  = 1E-3,
		k  = 1E3,
		M  = 1E6,
		G  = 1E9,
		T  = 1E12,
		P  = 1E15,
		E  = 1E18,
		Z  = 1E21,
		Y  = 1E24,
	}
}

function joules.from(j)
	local n, m = string.match(j, "([0-9.-]+)%s*([yzafpnumkMGTPEZY]?)%s*[jJ]")
	if not n then return j end
	if not m then return n end
	return n * joules.units[m]
end

function joules.to(j, unit)
	if not joules.units[unit] then return j end
	return j / joules.units[unit] .. unit .. "J"
end

return joules