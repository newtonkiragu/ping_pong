require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('rspec')
require('ping_pong')


describe('Fixnum#ping_pong') do
  it ("takes numbers divisible by both 3 and 5 and returns ping pong") do
    expect(15.ping_pong).to(eq([0, 1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "ping pong"]))
  end
  it ("takes numbers divisible by 5 and returns pong") do
    expect(5.ping_pong).to(eq([0, 1, 2, "ping", 4, "pong"]
    ))
  end
  it ("takes numbers divisible by 3 and returns ping") do
    expect(3.ping_pong).to(eq([0, 1, 2, "ping"]
    ))
  end
  it ("returns numbers not divisible by 3 or 5") do
    expect(self)
  end
end
