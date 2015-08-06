require('sinatra')
require('sinatra/reloader')
#require('./lib/coin_combination')
also_reload('lib/**/*.rb')
# also_reload('views/layout.erb')

get('/') do
  erb(:index)
end

get('/coin_combo') do
  all_change = params.fetch('coin').coin_combo()
  @coin = params.fetch('coin').coin_combo()
  @quarters = all_change[0]
  @dimes = all_change[1]
  @nickels = all_change[2]
  @pennies = all_change[3]
  erb(:coin_combo)
end
