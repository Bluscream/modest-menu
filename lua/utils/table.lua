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
function array_contains(arr, val)
    for i = 1, #arr do
        if arr[i] == val then return true end
    end 
    return false 
end
function table_clone(org)
    return {table.unpack(org)}
end
function table_shallowcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end
function table_deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end
function __genOrderedIndex( t )
    local orderedIndex = {}
    for key in pairs(t) do
        table.insert( orderedIndex, key )
    end
    table.sort( orderedIndex )
    return orderedIndex
end

function orderedNext(t, state)
    -- Equivalent of the next function, but returns the keys in the alphabetic
    -- order. We use a temporary ordered key table that is stored in the
    -- table being iterated.

    local key = nil
    --print("orderedNext: state = "..tostring(state) )
    if state == nil then
        -- the first time, generate the index
        t.__orderedIndex = __genOrderedIndex( t )
        key = t.__orderedIndex[1]
    else
        -- fetch the next value
        for i = 1,#t.__orderedIndex do
            if t.__orderedIndex[i] == state then
                key = t.__orderedIndex[i+1]
            end
        end
    end

    if key then
        return key, t[key]
    end

    -- no more value to return, cleanup
    t.__orderedIndex = nil
    return
end

function table_sort(t)
    -- Equivalent of the pairs() function on tables. Allows to iterate
    -- in order
    return orderedNext, t, nil
end