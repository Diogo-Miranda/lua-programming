function BuildPrefixTable (list)
    local t = {} -- tabela vazia
    for _, name in ipairs(list) do -- ipairs: percorre todos os índices (atribuídos á _)
        for len = 1, #name do
            local prefix = string.sub(name, 1, len) -- retorna uma substring
            if t[prefix] then
                t[prefix] = true -- colisao
            else
                t[prefix] = name
            end
        end
    end

    return t
end

function Complete (t, prefix)
    local w = t[prefix]
    if type(w) == "string" then return w
    elseif w == true then error ("ambigous prefix")
    else error("invalid prefix")
    end
end