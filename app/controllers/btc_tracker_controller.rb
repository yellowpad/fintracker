class BtcTrackerController < ApplicationController

  require 'rest_client'

  def index
    # blockchain_url = 'http://api.coindesk.com/v1/bpi/currentprice.json'
    blockchain_url="https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.quotes%20where%20symbol%20in%20(%22#{params[:symbol]}%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys&callback="
    render json: RestClient.get(blockchain_url)
    # render json: RestClient.get("https://maps.googleapis.com/maps/api/directions/json?key=#{ENV["google_map_key"]}&origin=")
  end
end
