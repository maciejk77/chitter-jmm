require 'data_mapper'
require 'sinatra'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/chitter_jmm_#{env}")

require './app/user'

DataMapper.finalize

DataMapper.auto_upgrade!
# DataMapper.auto_migrate!

# new
class Chitter < Sinatra::Base
  get('/') do
    erb :index
  end

  get('/users/new') do
    erb :'users/new'
  end

  post('/users/new') do
    user = User.create(
      :email => params[:email],
      :handle => params[:handle],
      :name => params[:name],
      :password => params[:password],
      ) 
    p user.email
    redirect to('/')
  end
end
