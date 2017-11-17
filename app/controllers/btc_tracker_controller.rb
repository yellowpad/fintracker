class BtcTrackerController < ApplicationController

  require 'rest_client'

  def index
    coindesk = JSON.parse( RestClient.get('http://api.coindesk.com/v1/bpi/currentprice.json'))
    # coinbase = RestClient.get('http://api.coindesk.com/v1/bpi/currentprice.json')
    bitstamp = JSON.parse( RestClient.get('https://www.bitstamp.net/api/ticker/') )
    blockchain = JSON.parse( RestClient.get('https://blockchain.info/ticker') )
    btc_price = {
    	# coinbase: coinbase,
    	coindesk: coindesk,
    	bitstamp: bitstamp,
    	blockchain: blockchain
    }
    # blockchain['USD']['last']
    # coindesk['bpi']['USD']['rate']
    # bitstamp['last']
    # bitstamp['open']
    render json: btc_price

  end
end
