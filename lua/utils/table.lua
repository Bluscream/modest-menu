function table_get_keys(t, sorted)
    sorted = sorted or false
    local keys={}
    for key,_ in pairs(t) do
      table.insert(keys, key)
    end
    if sorted then
        return table.sort(keys)
    end
    return keys
end
function table_get_values(t, sorted)
    sorted = sorted or false
    local values={}
    for _,value in pairs(t) do
      table.insert(values, value)
    end
    if sorted then
        return table.sort(values)
    end
    return values
end
function table_index_of(array, value)
    for i, v in ipairs(array) do
        if v == value then
            return i
        end
    end
    return nil
end
function table_key_of(tbl, value)
    for k, v in pairs(tbl) do
        if v == value then
            return k
        end
    end
    return nil
end
function table_get_previous_element(array, value)
    local index = table_index_of(array, value)
    if index == nil then
        return nil
    end
    if index == 1 then
        return nil
    end
    return array[index - 1]
end
function table_dump(o)
    if type(o) == 'table' then
    local s = '{ '
    for k,v in pairs(o) do
        if type(k) ~= 'number' then k = '"'..k..'"' end
        s = s .. '['..k..'] = ' .. table_dump(v) .. ','
    end
    return s .. '} '
    else
    return tostring(o)
    end
end
function table_count(T)
    local count = 0
    for _ in pairs(T) do count = count + 1 end
    return count
end
function table_invert(t)
    local s={}
    for k,v in pairs(t) do
      s[v]=k
    end
    return s
 end