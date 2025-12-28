
func intro
    see "======================
    Ring Lang Calc
======================
"
    return

func get_input msg
    while True
        see msg give text
        try
            value = number(text)
            return value
        catch
            ? "Input a Number not " + text
        end
    end

func calc exp1, exp2, input
    switch input
        on 1
            return exp1 + exp2
        on 2
            return exp1 - exp2
        on 3
            return exp1 * exp2
        on 4
            if exp2 = 0
                return "Division 0 Error"
            ok
            return exp1 / exp2
        off
    return 0

func mainloop
    while True
        num1 = get_input("Number 1: ")
        num2 = get_input("Number 2: ")
        op = get_input("Operator: ")

        result = calc(num1, num2, op)
        ? "Result: " + string(result)
    end

func main
    intro()
    mainloop()

    return 0