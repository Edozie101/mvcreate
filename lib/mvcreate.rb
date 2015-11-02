require "rack"

class Application
  def call(env)
    [200,{"Content-type" => "text/html"},["hello.world"]]

  end
end

Rack::Handler::WEBrick.run Application.new


#create a gem we use bundle gem 
