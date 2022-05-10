class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/characters" do
    characters = Character.all
    characters.to_json
  end

  get "/shows" do
    shows = Show.all
    shows.to_json
  end 

  get "/networks" do
    networks = Network.all
    networks.to_json
  end

end
