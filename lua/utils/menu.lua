function menu_add_global_toggle(var, title)
    log("utils/menu > menu_add_global_toggle: " .. dump(var) .. " | " .. dump(title))
    menu.add_toggle(title, function() return globals.get_boolean(var) end, function(var) global_toggle(var) end)
end
function menu_add_enum_range(enum, title, sort, action_callback, default_key_callback, _menu)
    log("utils/menu > menu_add_enum_range: " .. tostring(enum) .. " | " .. dump(title) .. " | " .. dump(sort) .. " | " .. dump(action_callback) .. " | " .. dump(default_key_callback))
    local enum_keys = table_get_keys(enum)
    local enum_keys_len = table_count(enum_keys)
    local enum_values = table_get_values(enum)
    local function default_index() return table_index_of(enum_keys, default_key_callback()) or 1 end
    local i = default_index()
    local function curkey() return enum_keys[i] end
    local function curval() return enum_values[i] end
    local function set_title()
        local title = title .. " | "
        if i == nil then i = default_index() end
        if i < enum_keys_len then title = title .. " < " end
        title = title .. enum_keys[i]
        if i > 0 then title = title .. " > " end
        return title
    end
    local function santize_index(i)
        if i == nil then i = default_index() end
        if i < 1 then i = 1 end
        if i > enum_keys_len then i = enum_keys_len end
        return i
    end
    local function next_item()
        i = santize_index(i)
        i = santize_index(table_index_of(enum_keys, curkey())+1)
        return set_title()
    end
    local function previous_item()
        i = santize_index(i)
        i = santize_index(table_index_of(enum_keys, curkey())-1)
        return set_title()
    end
    if _menu then _menu:add_bare_item(title, set_title, function() action_callback(curval()) end, previous_item, next_item)
    else menu.add_bare_item(title, set_title, function() action_callback(curval()) end, previous_item, next_item) end
end
function menu_centered_text(str)
    local len = 30 - math.floor(string.len(str) / 2 + 0.5)
    local text = ""
    for i = 0, len do
        text = text.." "
    end
    return text..str
end