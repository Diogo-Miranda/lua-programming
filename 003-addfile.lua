function AddFile (filename)
    -- body
    local sum = 0
    for line in io.lines(filename) do
        sum = sum + tonumber(line)
    end
    return sum
end