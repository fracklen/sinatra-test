require 'sinatra'

get '/' do
  "Just Do It"
end

get '/health' do
  "OK"
end

get '/append' do
  open('/data/file', 'a') do |f|
    1000.times do |i|
      1000.downto(1) do |j|
        f.puts("#{Math.sqrt(j) * i / 0.2}\n")
      end
    end
  end
  [200, {}, "OK"]
end

delete '/remove' do
  File.delete('/data/file')
end

get '/load' do
  1000.times do |i|
    1000.downto(1) do |j|
      f.puts("#{Math.sqrt(j) * i / 0.2}\n")
    end
  end
  [200, {}, "OK"]
end

get '/download' do
  [200, {}, File.read('/data/file')]
end
