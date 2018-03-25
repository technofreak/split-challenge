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
    
    OPERATIONS = {
        'plus': lambda { |a,b| b+a },
        'minus': lambda { |a,b| b-a },
        'times': lambda { |a,b| b*a },
        'divided_by': lambda { |a,b| b/a }
    }

    OPERATIONS.each do |meth, block|
        define_method(meth) do |num|
            _meth = block
            _meth.curry[num]
        end
    end

    # numbers
    NUMBERS = {
        'one': 1,   'two': 2,   'three': 3, 'four': 4,
        'five': 5,  'six': 6,   'seven': 7, 'eight': 8,
        'nine': 9
    }

    NUMBERS.each do |num, val|
        define_method(num) do |*arg|
            arg && arg[0] ? arg[0].curry[val] : val
        end
    end

end