def even_next(n)
    n / 2
end

def odd_next(n)
    3 * n + 1
end

def next_value(n)
    if n.even?
        even_next(n)
    else
        odd_next(n)
    end
end

def collatz(n)
    list = [n]
    while n != 1
        list << n = next_value(n)
    end
    return list
end

def longest_collatz
    n = 1
    longest_start = 1
    longest_length = 1
    while n < 1000000
        if collatz(n).length > longest_length
            longest_start = n
            longest_length = collatz(n).length
        end
        n += 1
    end
    return longest_start
end