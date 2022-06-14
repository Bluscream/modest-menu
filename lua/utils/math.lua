local function Distance(vec1, vec2)
	return math.sqrt(((vec2.x - vec1.x)^2) + ((vec2.y - vec1.y)^2) + ((vec2.z - vec1.z)^2))
end