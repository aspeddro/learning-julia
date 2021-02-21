# Operações aritméticos
x = 1
y = 3

x+y |> println
x-y |> println
x*y |> println
x/y |> println
x ÷ y |> println # trunca para int
x \ y |> println # divisão inversa y/X
x^y |> println # potência
x % y |> println # ou rem(x, y)

ok = false

!ok |> println # negação

NaN * false |> println # false é zero

# Operadores bitwise

~x # not
x & y # and
x | y # or
x ⊻ y # exclusive or
x >>> y # logical shift right
x >> y # art shift right
x << y #logical/arc shift left

# Atualizando Operadores
t = 4

t += 2 # t = 6

t -= 2 # t = 4

t *= 3 # t = 12

t /= 4 # t = 3.0

# Operadores vetorizados de Ponto

[1,2,3] .^ 3 |> println # como map()

[10, 20, 30] .% 10 |> println

# Operadores de comparação

2 == 2

1 != 3
1 ≠ 3

10 < 1

3 <= 3
3 ≤ 3

0 > -1
0 ≥ -1

1 == 1.0 # true
1 == Float32(1) # true

0 == -0 # true
0 > -0 # false

NaN == NaN # false
NaN != NaN #true

# Funções auxiliares
isequal(NaN, NaN) # true
isfinite(100) #true
isinf(Inf) # true
isnan(NaN) #true
isequal(-0.0, 0.0) # false

# Encadeando comparações
1 < 2 > 0 # true

v(x) = (println(x); x) # fun genérica
v(1) < v(2) <= v(3)

# Funções elementares
values = [0, 1, 2]
sin.(values) |> println # seno de cada valor de values

# Conversões numéricas

Int8(127)
Int8(128) # erro int8 até 127
Int8(127.0)

# Funções de arredondamento
round(1.2)
round(Int32, 1.5) # para o int mais próximo

floor(1.3) # 1.0


floor(Int8, 5.2) |> x -> (x |> typeof, x) |> println

ceil(2.3) |> print #arredondamento pra cima

trunc(2.5) |> Int64 # trunca

# Funções de divisão

div(5,2) # div truncada
fld(10, 3) # divisão de piso
cld(10, 3) # divisão de teto
rem(120, 2) # resto da div
mod(10, 100)
divrem(2, 2) # retorna (div(x, y), rem(x, y))
gcd(3, 6, 9) # maior divisor comum positivo
lcm(27, 3, 2) # menor multiplo comum positivo


# Funções de sinal e valor absoluto

abs(-2) # modulo
abs2(-5) # abs()^2
sign(-2) # sinal do valor
signbit(-2) # bit do sinal

tan(pi/4) # 45 graus
tand(45)