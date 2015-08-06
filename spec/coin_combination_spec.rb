require('rspec')
require('coin_combinations')

describe('Fixnum#change') do
  it('receives user input and divides by four') do
    expect(166.change).to(eq(6))
  end
end
