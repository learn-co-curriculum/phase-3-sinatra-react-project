class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/exercises' do
    exercises = Exercise.all
    exercises.to_json
  end

  post '/save-workout' do
    request_payload = JSON.parse(request.body.read)
  
    day = request_payload['day']
    exercise = request_payload['exercise']
    muscle = request_payload['muscle']
    difficulty = request_payload['difficulty']
    instructions = request_payload['instructions']
  

    workout = Workout.new(day: day, exercise: exercise, muscle: muscle, difficulty: difficulty, instructions: instructions)
    if workout.save
      status 201
      { message: 'Workout saved successfully' }.to_json
    else
      status 500
      { error: 'Failed to save workout' }.to_json
    end
  end

  get '/workouts' do
    workouts = Workout.all
    workouts.to_json
  end

  delete '/workouts/:id' do
    workout = Workout.find(params[:id])
  end

  end
