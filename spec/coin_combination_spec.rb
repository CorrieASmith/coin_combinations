require('rspec')
require('coin_combinations')

describe('Fixnum#change') do

  it('receives user input and divides quarters') do
    expect(166.change).to(eq([6, 1, 0, 0]))
  end

  it('takes remainder after quarters, then divides by dimes') do
    expect(166.change).to(eq([6, 1, 0, 0]))
  end

  it('takes remainder after dimes, then divides by nickels') do
    expect(166.change).to(eq([6, 1, 1, 0]))
  end

end
