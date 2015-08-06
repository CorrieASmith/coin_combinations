class Fixnum
    define_method(:change) do
      input = self
      coins =  [0, 0, 0, 0]
      remainder = input.%(25)  # R: 16 w/ 166 input

      coins.shift
      coins.unshift(quarters = input./(25))      # quarters
      coins.delete_at(1)
      coins.insert(1, (dimes = remainder./(10)))     # dimes
      coins
  end
end
