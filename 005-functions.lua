-- criada instantaniamente
(function (a,b) print(a+b) end)(10,20)

-- atribuída a uma variável
foo = function (a,b) print(a+b) end
foo(10,20)

-- múltiplos retornos
function Foo(x) return x, x+1 end
print(Foo(3))
-- a, b = Foo(10) -- atribuir multiplos retornos
a, b, c =  Foo(10), Foo(20)
print(a)
print(b)
print(c)