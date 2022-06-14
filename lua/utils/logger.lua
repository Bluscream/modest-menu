function catch(what)
    return what[1]
 end
 
 function try(what)
    status, result = pcall(what[1])
    if not status then
       what[2](result)
    end
    return result
 end

-- local filename = function()
--     local str = debug.getinfo(2, "S").source:sub(2)
--     return str:match("^.*/(.*).lua$") or str
-- end
debug = true
function log(item, _debug)
    -- filename().."> "
    -- time = "["..os.date("!%Y-%m-%dT%TZ").."] "
    -- res = {}
    -- for i,item in arg do
    -- table.insert(res, item)
    -- end
    -- print(table.concat(res, " | "))    
    if not _debug or debug then print(dump(item)) end
end
function trydump(item)
    try {
        function()
            if item == nil then return "nil" end
            if type(item) == "table" then
                return table_dump(item)
            elseif type(item) == "bool" then
                if item == true then return "true" elseif item == false then return "false" end
            end
            return tostring(item)
        end,
        catch {
           function(error)
              return '(ERR:'..error..')'
           end
        }
     }
end
function dump(item)
    if item == nil then return "nil" end
    if type(item) == "table" then
        return table_dump(item)
    elseif type(item) == "bool" then
        if item == true then return "true" elseif item == false then return "false" end
    end
    return tostring(item)
end
