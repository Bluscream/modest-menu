function math_distance(vec1, vec2)
	return math.sqrt(((vec2.x - vec1.x)^2) + ((vec2.y - vec1.y)^2) + ((vec2.z - vec1.z)^2))
end
function math_onodot(valu)
	local l = 0 
	local n = math.floor(valu * 10)
	for i = 0, n do
		l = i/10
	end
	return l
end
function math_sqrt(i)
	return i^0.5
end
function math_distancetosqr(vec1, vec2)
	return ((vec2.x - vec1.x)^2) + ((vec2.y - vec1.y)^2) + ((vec2.z - vec1.z)^2)
end
function math_distance2(vec1, vec2)
	return math_sqrt(math_distancetosqr(vec1, vec2))
end 
function math_floor(num)
	return num//1
end