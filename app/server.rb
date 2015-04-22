require 'data_mapper'
require 'sinatra'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/chitter_jmm_#{env}")

require './app/user'

DataMapper.finalize

DataMapper.auto_upgrade!

# new
class Chitter < Sinatra::Base
  get('/') do
    erb :index
  end

  get('/users/new') do
    erb :'users/new'
  end

  post('/users/new') do
    p params[:email]
    p params[:handle]
    p params[:name]
    p params[:password]
    p params[:email]
    redirect to('/')
  end
end
