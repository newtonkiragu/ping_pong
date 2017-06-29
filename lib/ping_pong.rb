class Fixnum
  define_method(:ping_pong) do
    pingponged = ""
    for num in(0..self)
    if num == 0
      pingponged.concat("0")
    elsif num.%(15).eql?(0)
      pingponged.concat(', ping pong')
    elsif num.%(5).eql?(0)
      pingponged.concat(', pong')
    elsif num.%(3).eql?(0)
      pingponged.concat(', ping')
    else
      pingponged.concat(",".concat(num.to_s))
    end
  end
  return pingponged
end
end
