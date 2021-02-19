function hello()
    println("Hello World")
end

hello() # call function

typeof(hello()) == Nothing

function rightjustify(s)
    println(' '^(80 - length(s)) * s)
end

rightjustify("monty")

function printgrid()
    dash = " - "^4
    sep = "+" * dash * "+" * dash * "+"
    line = "|" * " "^12 * "|" * " "^12 * "|"
    println(sep)
    println(line)
    println(line)
    println(line)
    println(line)
    println(sep)
    println(line)
    println(line)
    println(line)
    println(line)
    println(sep)
end

printgrid()