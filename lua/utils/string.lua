function string.startsWith(String,Start)
    if String == nil or Start == nil then return false end
    return string.sub(String,1,string.len(Start))==Start
 end