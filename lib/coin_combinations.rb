class Fixnum
    define_method(:change) do
      var_a = self
      var_a = var_a./(25).floor()
    end
end
