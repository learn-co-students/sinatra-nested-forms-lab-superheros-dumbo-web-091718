require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :index
    end

    post '/teams' do
      @name = params[:team][:team_name]
      @motto = params[:team][:motto]
      @heros = params[:team][:heros][0]
      erb :team
    end

end
