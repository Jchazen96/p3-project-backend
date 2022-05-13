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

  get "/characters/:id" do
    characters = Character.find(params[:id])
    characters.to_json
  end

  get "/shows" do
    shows = Show.all
    shows.to_json
  end 

  get "/shows/:id" do
    shows = Show.find(params[:id])
    shows.to_json(include: :characters)
  end 

  get "/networks" do
    networks = Network.all
    networks.to_json
  end

  get "/networks/:id" do
    networks = Network.find(params[:id])
    networks.to_json(include: :shows)
  end

  delete '/characters/:id' do
    characters = Character.find(params[:id])
    characters.destroy
    characters.to_json
  end

  delete '/shows/:id' do
    show = Show.find(params[:id])
    show.destroy
    show.to_json
  end

  post '/characters' do
    character = Character.create(
      name: params[:name],
      image: params[:image],
      age: params[:age],
      show_id: params[:show_id]
    )
    character.to_json
  end 

  post '/shows' do
    newShow = Show.create(
      name: params[:name],
      image: params[:image],
      network_id: params[:network_id]
    )
    newShow.to_json
  end

end
