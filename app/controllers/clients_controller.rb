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
    #binding.pry
  end

  get "/clients/:id" do
    @client = Client.find(params[:id])
    # binding.pry
    erb :"/clients/show"
  end

  






  # post "/clients/account" do
  #   acct = Client.find_by(username: params[:username])
  #   binding.pry
  # end

  #
  # # GET: /clients/5
  # # get "/clients/:id" do
  # #   # erb :"/clients/shows"
  # # end
  #
  # # GET: /clients/5/edit
  # get "/clients/:id/edit" do
  #   erb :"/clients/edit"
  # end
  #
  # # PATCH: /clients/5
  # patch "/clients/:id" do
  #   redirect "/clients/:id"
  # end
  #
  # # DELETE: /clients/5/delete
  # delete "/clients/:id/delete" do
  #   redirect "/clients"
  # end
end
