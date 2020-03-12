require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end

  get "/" do
    erb :"welcome"
  end
  #
  get "/pick_acct_type" do
    erb :"pick_login"
  end

  get "/barbers/login" do
    erb :"barbers/index"
  end








  helpers do

  end

end
