class BarbersController < ApplicationController

  # GET: /barbers
  get "/barbers" do
    erb :"/barbers/index.html"
  end

  # # GET: /barbers/new
  # get "/barbers/new" do
  #
  #   erb :"/barbers/new.html"
  # end
  #
  # # POST: /barbers
  # post "/barbers" do
  #   redirect "/barbers"
  # end
  #
  # # GET: /barbers/5
  # get "/barbers/:id" do
  #   erb :"/barbers/show.html"
  # end
  #
  # # GET: /barbers/5/edit
  # get "/barbers/:id/edit" do
  #   erb :"/barbers/edit.html"
  # end
  #
  # # PATCH: /barbers/5
  # patch "/barbers/:id" do
  #   redirect "/barbers/:id"
  # end
  #
  # # DELETE: /barbers/5/delete
  # delete "/barbers/:id/delete" do
  #   redirect "/barbers"
  # end
end
