class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    players = Player.all
    players.to_json
  end

  get "/:username" do
    characters = Player.find_by(username: params[:username]).characters.all
    # puts characters
    characters.to_json
  end

  get "/:username/:id" do
    player = Player.find_by(username: params[:username])
    character = player.characters.find(params[:id])
    race = character.race
    klass = character.klass
    data = [character, race, klass]
    data.to_json
  end

  delete "/:username/:id" do
    character = Character.find(params[:id])
    character.destroy
    character.to_json
  end

  post "/new-character" do
    character = Character.create(
      name: params[:name],
      level: params[:level],
      str: params[:str],
      dex: params[:dex],
      con: params[:con],
      int: params[:int],
      wis: params[:wis],
      cha: params[:cha],
      player_id: Player.find_by(name: params[:player_id]).id,
      klass_id: Klass.find_by(name: params[:klass_id]).id,
      race_id: Race.find_by(name: params[:race_id]).id
    )
    
    character.update(
      hp: self.calculate_hp,
      current_hp: self.calculate_hp,
      is_spellcaster: self.is_spellcaster?
    )
    
    character.to_json
  end

  patch "/:username/:id/edit" do
    character = Character.find(params[:id])
    character.update(
      name: params[:name],
      level: params[:level],
      hp: params[:hp],
      current_hp: params[:current_hp],
      is_spellcaster: params[:is_spellcaster],
      str: params[:str],
      dex: params[:dex],
      con: params[:con],
      int: params[:int],
      wis: params[:wis],
      cha: params[:cha],
      player_id: Player.find_by(name: params[:player_id]).id,
      klass_id: Klass.find_by(name: params[:klass_id]).id,
      race_id: Race.find_by(name: params[:race_id]).id
    )
  end

end
