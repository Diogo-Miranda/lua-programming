function prefixes (s, len)
    len = len or 0
    if len <= #s then
        return string.sub(s, 1, len), prefixes(s, len+1)
    end
end

print(prefixes("alo"))