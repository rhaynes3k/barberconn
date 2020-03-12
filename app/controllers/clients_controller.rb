class ClientsController < ApplicationController

  # GET: /clients/new
  get "/clients/new" do

    erb :"clients/new"
  end

  get "/clients" do
    @client = Client.all
    #binding.pry
    erb :"clients/index"
  end

  # POST: /clients
  post "/clients" do
    @new_cli = Client.create(params)
    redirect :"/clients/show"
    #binding.pry
  end

  get "/clients/login" do
    # redirect '/clients.login'
    erb :"clients/login"
  end

  post "/clients/login" do
    client = Client.find_by(username: params[:username])
    session[:user_id] = client.id
    redirect "/clients/#{client.id}"
  end

  get "/clients/logout" do
    session.clear
    redirect "/clients/login"
  end

  get "/clients/:id" do
    @client = Client.find(params[:id])
    # binding.pry
    erb :"/clients/show"
  end

  # GET: /clients/5/edit
  get "/clients/:id/edit" do
    @client = Client.find(params[:id])
    erb :"/clients/edit"
  end

  # PATCH: /clients/5
  patch "/clients/:id" do
    #binding.pry
    @client = Client.find(params[:id])
    @client.update(name: params[:name], username: params[:username], style: params[:style])
    redirect "/clients/#{@client.id}"
  end






  #
  # # GET: /clients/5
  # # get "/clients/:id" do
  # #   # erb :"/clients/shows"
  # # end
  #

  #

  #
  # # DELETE: /clients/5/delete
  # delete "/clients/:id/delete" do
  #   redirect "/clients"
  # end
end
