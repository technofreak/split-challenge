# We want to write calculations using functions and get the results.
# Here are some examples:
# seven(times(five)) # must return 35
# four(plus(nine)) # must return 13
# eight(minus(three)) # must return 5
# six(divided_by(two)) # must return 3
# Requirements:
# There must be a function for each number from 0 (“zero”) to 9 (“nine”)
# There must be a function for each of the following mathematical operations: plus, minus, times, divided_by
# Each calculation consist of exactly one operation and two numbers
# The most outer function represents the left operand, the most inner function represents the right operand
module NumbersOperations

    # operands
    def plus(num)
        _add = lambda { |a,b| b+a }
        _add.curry[num]
    end

    def minus(num)
        _sub = lambda { |a,b| b-a }
        _sub.curry[num]
    end

    def times(num)
        _mul = lambda { |a,b| b*a }
        _mul.curry[num]
    end

    def divided_by(num)
        _div = lambda { |a,b| b/a }
        _div.curry[num]
    end

    # numbers
    def one(oper=nil)
        oper ? oper.curry[1] : 1
    end

    def two(oper=nil)
        oper ? oper.curry[2] : 2
    end

    def three(oper=nil)
        oper ? oper.curry[3] : 3
    end

    def four(oper=nil)
        oper ? oper.curry[4] : 4
    end

    def five(oper=nil)
        oper ? oper.curry[5] : 5
    end

    def six(oper=nil)
        oper ? oper.curry[6] : 6
    end
    def seven(oper=nil)
        oper ? oper.curry[7] : 7
    end

    def eight(oper=nil)
        oper ? oper.curry[8] : 8
    end

    def nine(oper=nil)
        oper ? oper.curry[9] : 9
    end

end