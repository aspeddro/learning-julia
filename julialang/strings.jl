# Caracteres Char (aspas simples)

'a' |> typeof
'a' |> Int # 97
Char(97) # 'a'

'\u78' # unicores
'\u78' |> Char # letra x em unicode
isvalid(Char, '\u78') # true

## Comparando chars

'A' < 'a' # true

'A' + 1 # 'B'

# Strings (aspas duplas)

str = "Hello World!!!\n"

strcont = """Contains "quote" chars"""
strcont |> print

## Extraindo Caracteres

str[begin]
str[1] # pelo indice
str[end]

lastindex(str) |> i -> str[i] # pega o ultimo indice

str[end-1]
str[end÷2] # metade da Strings
str[end+1] #error

str[begin:5] # pegando pelo intervalo
str[1:5] # ou
str[1:1] # primeira letra
str[1:30] # error

substr = SubString(str, 1, 4)
substr |> typeof # SubString{String}

# Unicoode e UTF-8

"\u2200" |> print

s = "\u2200 x \u2203 y"

for i = firstindex(s):lastindex(s)
    try
        println(s[i])
    catch
        # ignora erro
    end
end

for c in s
    println(c)
end

for i = eachindex(s) |> collect 
    println(s[i])
end

isvalid.(collect(s))

# Concatenação

string("Jul", ", ", "IA")
"Jul" * "ia" # operador * para concatenar


# Interpolação

greet, whon = "Hello", "World"

"$greet $whon !!!"

"1 + 2 = $(1 + 2)"

"OOOOO $(greet * " " * whon)"

notes = [8, 7, 9]
"Notas: $notes"

c = 'x'
"hi, $c"

"Interpolação usa \$" |> print #espace \ pra printar $

# Strings (aspas triplas)

strlong = """
    Hello,
    World.
"""

strlong |> print

# Operações Comuns

"ab" <= "bc" #true

findfirst(isequal('a'), "banana") # 2
findlast(isequal('n'), "banana") # 5

findnext(isequal('o'), "xylophone", 1) #4 | iniciando a busca a partir de 1

occursin("lia", "julia") # true | match substring

repeat("...z", 10)

join(["ju", "li", "a"])


# Expressões Regulares

regex = r"^\s*(?:#|$)"

regex |> typeof # Regex 

occursin(regex, "# a comment") # true

match(regex, "# a comment") # RegexMatch() | objeto

## Extraindo
match(r"[0-9]","aaaa1aaaa2aaaa3") |> x -> x.match # "1"
match(r"(a|b)(c)?(d)", "acd") |> x -> x.captures # | Array
match(r"(a|b)(c)?(d)", "acd") |> x -> x.match # "acd" | String
match(r"(a|b)(c)?(d)", "wwacd") |> x -> x.offset
match(r"(a|b)(c)?(d)", "wwacd") |> x -> x.offsets

## Desestruturação
first, second, third = match(r"(a|b)(c)?(d)", "acd") |> x -> x.captures

"1: $(first), 2: $(second), 3: $(third)" |> print

## Capturando pelo index

rgtime = match(r"(?<hour>\d+):(?<minute>\d+)", "12:45")

rgtime[:minute] # "45"
rgtime[2]
rgtime[:hour] # "12" 

## Replace string

replace("a", r"." => s"\g<0>1") # "a1"

## Regex Flags

match(r"pedro"i, "Pedro Victor") # "Pedro" | i ativa insensitive captures


## Regex() construtor

rgmyname = "pedro"
match(Regex("$rgmyname Victor", "i"), "Pedro Victor") # | Interpolação pra construir regex dinamicamente


# Literais de matriz de bytes https://docs.julialang.org/en/v1/manual/strings/#man-byte-array-literals


