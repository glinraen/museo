class Museo < Sinatra::Base

  #general route actions
  get '/' do
    redirect '/museums'
  end

end
