require "bundler/setup"
require "rails"
require "action_controller/railtie"

<<<<<<< HEAD
class App < Sinatra::Base
  get '/' do
    "You're running Unicorn on Heroku!"
=======
$stdout.sync = true

class MyApp < Rails::Application
  routes.append do
    match "/" => "hello#index"
>>>>>>> master
  end

  config.logger = Logger.new STDOUT
  config.secret_token = "asdf8sadfas8dlj2342b3bv23bvn23o3u"
  config.threadsafe!
end

class HelloController < ActionController::Base
  def index
    @time = Time.now
  end
end

MyApp.initialize!

run MyApp

