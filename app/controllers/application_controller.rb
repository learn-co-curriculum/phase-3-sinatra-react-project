class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Hello!" }.to_json
  
  end

  get "/components" do
     components = Component.all
     components.to_json
  end

  get "/builds" do
    builds = Build.all
    builds.to_json
  end

  get "/builds/:id" do
    build = Build.find(params[:id])
    components = build.components.map{ |component| {"type": component.component_type, "name": component.name, "price": component.price} }
    build_json = {
      build_name: build.name,
      total_price: build.price,
      components: components
    }.to_json
  end
  
  post "/builds" do
    build = Build.new(name: params[:name])

    chassis = Component.find_by(component_type: "case", name: params[:chassis])
    cpu = Component.find_by(component_type: "CPU", name: params[:cpu])
    gpu = Component.find_by(component_type: "GPU", name: params[:gpu])
    motherboard = Component.find_by(component_type: "motherboard", name: params[:motherboard])
    power_supply = Component.find_by(component_type: "power-supply", name: params[:powerSupply])
    storage = Component.find_by(component_type: "storage", name: params[:storage])
    memory = Component.find_by(component_type: "memory", name: params[:memory])

    components = [chassis, cpu, gpu, motherboard, power_supply, storage, memory]

    build.price = components.map{ |x| x.price }.sum
    build.save

    components.each do |component|
      BuildComponent.create(build: build, component: component)
    end

    return build.to_json
  end
end