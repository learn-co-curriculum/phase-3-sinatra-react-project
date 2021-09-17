class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/characters" do
    Character.all.to_json
  end

  patch "/characters" do
    character_all = Character.all
    character_all.each do |character|
      character.update(
      current_energy: params[:current_energy],
      current_HP: params[:current_HP],
      shield: params[:shield]
      )
    end
    character_all.to_json
  end

  get "/characters/:id" do
    Character.find(params[:id]).to_json
  end

  patch "/characters/:id" do
    character = Character.find(params[:id])
    character.update(
      current_energy: params[:current_energy],
      current_HP: params[:current_HP],
      shield: params[:shield]
    )
    character.to_json
  end

  get "/cards" do
    Card.all.to_json
  end

  delete "/cards" do
    cards_in_hand = Card.all.each do |card| 
      if card.subset == "hand"
        card.delete
      end
    end
    
    Card.create(
      subset: "hand",
      name: "Attack",
      card_type: "attack",
      cost: 1,
      damage: 6,
      shield: 0,
      heal: 0,
      upgrade: 0
    )

    Card.create(
      subset: "hand",
      name: "Defense",
      card_type: "skill",
      cost: 1,
      damage: 0,
      shield: 4,
      heal: 0,
      upgrade: 0
    )

    Card.create(
      subset: "hand",
      name: "Heal",
      card_type: "skill",
      cost: 1,
      damage: 0,
      shield: 0,
      heal: 2,
      upgrade: 0
    )
  end

  post '/hand' do
    card = Card.create(
      subset: "hand",
      name: params[:name],
      card_type: params[:card_type],
      cost: params[:cost],
      damage: params[:damage],
      shield: params[:shield],
      heal: params[:heal],
      upgrade: 0
  )
    card.to_json
  end

  get "/hand" do
    Card.all.to_json
  end

  get "/play_card/:id" do
    card = Card.find(params[:id])
    if card.subset == "hand"
      player = Character.all[0]
      enemy = Character.all[1]
      characters = Character.all


      if player.current_energy - card.cost >= 0
        card.play(player, enemy)
      end
      characters.to_json
    end

  end

  get "/end_turn" do
    card_all = Card.all
    player = Character.all[0]
    enemy = Character.all[1]
    characters = Character.all

    # reset the enemy's shield to 0
    enemy.update(shield: 0)

    # reset the player's energy to maximum after the end of the turn
    player.update(current_energy: player.max_energy)

    # enemy plays the card until its energy is depleted
    while enemy.current_energy > 0
      card = card_all[rand(0..(card_all.length - 1))]
      if enemy.current_energy - card.cost >= 0
        card.play(enemy, player)
      end
      puts "while loop ran"
    end

    # reset the enemy's energy to maximum after the end of the turn
    enemy.update(current_energy: enemy.max_energy)

    # reset the player's shield to 0
    player.update(shield: 0)


    characters.to_json

  end

  # patch "/characters" do
  #   Character.reset
  # end



end
