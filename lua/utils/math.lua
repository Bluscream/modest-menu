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
function math_thousand_seperator(value)
	while true do
	   value, k = string.gsub(value, "^(-?%d+)(%d%d%d)", '%1,%2')
	   if (k==0) then
		  break
	   end
	end
	return value
end
function math_round(val, decimal)
	if (decimal) then
	   return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
	else
	   return math.floor(val+0.5)
	end
end

-- math.randomseed(os.time())
math.random(); math.random(); math.random()