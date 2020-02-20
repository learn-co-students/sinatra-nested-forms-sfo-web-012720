require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :'root'
    end

    get '/show' do
      @pirate = 
      erb :'pirates/show/:id'
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params["pirate"])
      @ships = []
      params["pirate"]["ships"].each do |ship|
        @ships << Ship.new(ship)
      end
      erb :'pirates/show'
    end

    

  end
end
