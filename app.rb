# app.rb
require 'sinatra'
require 'holidapi'

class HolidApiApp < Sinatra::Base
  get '/' do
  	@currentholidays = HolidApi.get(country: 'us', year: Time.now.year, month: Time.now.month).flatten
    @bdayholidays = HolidApi.get(country: 'us', year: 1993, month: 1).flatten
    erb :index1
  end
end 