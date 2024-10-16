# print stars, use for loop only once.

class Star
  def print(num = 5, order = 'desc')
    return print(num + 2, 'asc') if num == 0
    return if num == 6 && order == 'asc'
    str = ""
    (5 - num).times { str = str + " "}
    num.times { str = str + "* " }
    puts str
    if order == 'asc'
      print(num + 1, 'asc')
    else
      print(num - 1)
    end
  end
end

Star.new.print
