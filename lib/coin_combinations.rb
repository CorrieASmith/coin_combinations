class Fixnum
    define_method(:change) do
      input = self
      coins =  [0, 0, 0, 0]  # [quarters, dimes, nickles, pennies]

      # quarters
      coins[0] = input./(25)
      remainder = input.%(25)  # w/input of 166, remainder = 16

      # dimes
      coins[1] = remainder./(10)
      remainder = remainder.%(10)  # w/input of 166, remainder = 6

      # nickles
      coins[2] = remainder./(5)
      remainder = remainder.%(5)
      
      # pennies
      coins[3] = remainder./(1)
      remainder = remainder.%(1)

      coins
  end
end
