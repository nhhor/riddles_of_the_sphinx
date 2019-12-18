require('sinatra')
require('sinatra/reloader')
require('./lib/riddle')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  riddle1 = Riddle.new('a', nil, 'yes', 'yes')
  riddle1.riddle()
  riddle2 = Riddle.new('b', nil, 'no', 'no')
  riddle2.riddle()

  riddle3 = Riddle.new('c', nil, 'maybe', 'maybe')
  riddle3.riddle()
  erb(:intro)
end

get ('/riddles') do
  @riddles = Riddle.all
  # puts "TEST: #{@riddles}"
  erb(:riddles)
end
