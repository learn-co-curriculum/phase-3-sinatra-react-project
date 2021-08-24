class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  get "/animals" do 
    animals = Animal.all
    animals.to_json
  end

  get "/animals/:id" do 
    animal = Animal.find(params[:id])
    animal.to_json(include: :animal_logs)
  end

  get "/zookeepers" do 
  zookeepers = Zookeeper.all
  zookeepers.to_json
  end

  post "/animal_logs" do 
    animal_log = AnimalLog.create(animal_log_params)
    animal_log.to_json(methods: [:updated_at])
  end

  patch "/animal_logs/:id" do
    animal_log = AnimalLog.find(params[:id])
    animal_log.update(animal_log_params)
    animal_log.to_json(methods: [:updated_at])
  end

  delete "/animal_logs/:id" do
    animal_log = AnimalLog.find(params[:id])
    animal_log.destroy
    animal_log.to_json(methods: [:updated_at])
  end

  get "/animal_logs/zookeeper/:id" do
    keeperLogs = AnimalLog.where(zookeeper_id: params[:id])
    keeperLogs.to_json

  end

  get "/animal_logs/animal/:id" do 
    animalLog = AnimalLog.where(animal_id: params[:id])
    animalLog.to_json
  end

  post "/animal_logs" do

    newLog = AnimalLog.create(note: params[:note] , 
                     animal_id: params[:animal_id],
                     zookeeper_id: params[:zookeeper_id],
                     pooped: params[:pooped],
                     fed: params[:fed]
                    )
    newLog.to_json
  end
  
  get "/" do
    { message: "Home Page" }.to_json
  end

  private 

  def animal_log_params
    allowed_params = %w(animal_id log_time pooped fed updated_at id note)
    params.select {|param,value| allowed_params.include?(param)}
  end

end
