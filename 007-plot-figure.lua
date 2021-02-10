function circle (cx, cy, r) 
    return function (x, y) return (x - cx)^2 + (y - cy)^2 <= r^2 end
end

local M, N = 60, 60 -- tamanho do desenho
function plot (f)
    io.write("P1\n", M, " ", N, "\n")
    for i = 1, N do -- percorre as linhas
        local y = (N/2 - i)*2/N
        for j = 1, M do -- percorre as colunas
            local x = (j - M/2)*2/M
            io.write(f(x, y) and "1" or "0")
        end
        io.write("\n")
    end
end

function diff (g1, g2)
    return function (x, y) return g1(x, y) and not g2(x, y) end
end

plot(diff(circle(0, 0, 1), circle(0.3, 0, 1)))