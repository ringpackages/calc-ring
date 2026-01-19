
func intro
    see "======================
    Ring Lang Calc
======================
"
    return

func clear
    System("cls")

func is_op op
    switch op
        on 0
            return "False"
        on 1
            return "True"
    off

func get_input msg, is_operator
    // ? "[DEBUG] " + msg + is_op(is_operator) + " [DEBUG]"
    if is_op(is_operator) = "True"
            see "this"
            msg = msg + "(1=+/2=-/3=*/4=/) "
        ok
    while True
        see msg give text
        
        try
            value = number(text)
            return value
        catch
            ? "Input a Number not " + text
        end
    end

func _continue
    see "Press enter to continue" give cls
    return

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
        clear()
        intro()
        num1 = get_input("Number 1: ", False)
        num2 = get_input("Number 2: ", False)
        op = get_input("Operator: ", True)

        result = calc(num1, num2, op)
        ? "Result: " + string(result)
        _continue()
    end

func main
    mainloop()

    return 0