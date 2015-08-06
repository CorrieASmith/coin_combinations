class Fixnum
    define_method(:change) do
      input = self
      coins =  [0, 0, 0, 0]

      # quarters
      coins[0] = input./(25)
      remainder = input.%(25)  # R: 16 w/ 166 input

      # dimes
      coins[1] = remainder./(10)
      remainder = remainder.%(10)  # remainder changed


      #coins.delete_at(2)
      #coins.insert(2, (nickels = remainder_after_dimes./(5))) # nickels

      coins
  end
end
