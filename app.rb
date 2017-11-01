require 'sinatra'

get '/' do
  "Just Do It"
end

get '/health' do
  "OK"
end

get '/load' do
  10000.times do |i|
    1000.downto(1) do |j|
      Math.sqrt(j) * i / 0.2
    end
  end
  [200, {}, "OK"]
end
