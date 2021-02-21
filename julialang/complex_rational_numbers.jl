# Números Complexos

1+2im

real(2 + 3im) # pega a parte real

imag(2 + 3im) # pega a parte imaginária

r = 1; b = 2
r + bim # a notação de coeficiente numerico literal não funciona para construir numeros Complexos

r + b*im # utilizar explicitamente o operador *
complex(r, b) # ou pela funcão complex

# Números Racionais

2//3 # utiliza // para obter os proporções exatas

6//9 # se numerador e denominador tem falores comuns, então eles são reduzidos

5//-15 |> print # retorna -1//3

5//-15 |> numerator # -1
5//-15 |> denominator #3

2//3 == 6//9 # true
2/3 == 6/9 # true

3//5 |> float

isequal(float(1//2), 1/2) # a conversão de racional para float respeita a identidade para qualquer vlor integrais de n e d, exceto n == 0 e d == 0

typeof(1//2) # Rational{Int64}

0//0 # error

1//2 + 1//2 # 1//1

0.33 == 1//3 # false
Float64(1/3) == 1//3 # false
