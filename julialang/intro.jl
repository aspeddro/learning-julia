# variables (case sensitive)

x = 10

X = 5

σ = "sigma" # \sigma, Julia support UTF-8

typemin(Int32) # int32 max
typemax(Int128)

max = typemax(Int64)

max + 1 == typemax(Int64) # return false

# Float number
flNumber = 1.0
flNumberS = 1.

# Ponto flutuante zero

0.0 == -0.0 # true

# valores especiais, Inf16, Inf32, Inf

# epsilon
eps() # or eps(FloatBit)
nextfloat(1.0)
prevfloat(1.0)

# Coeficientes lietrais numericos. As precedências sofrem algumas alterações
ag = 3
2ag^2 - 5ag + 2 # escrevendo de forma mais limpa
3^2ag
√25ag # é avaliado como sqrt(25) * ag e não sqrt(25 * ag)

# Literal zero e um
zero(Float32)
zero(Float64)
one(BigFloat)
print()