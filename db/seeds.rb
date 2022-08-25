puts "🌱 Seeding spices..."

# Seed your database here

project_1 = Project.create(
    name: 'Kitchen', 
    priority: 'high'
)
project_2 = Project.create(
    name: 'Laundry Room', 
    priority: 'low'
)
project_3 = Project.create(
    name: 'Backyard', 
    priority: 'medium'
)

Task.create(
    name: 'get estimate from contractor',
    task_status: false,
    project: project_1
)
Task.create(
    name: 'remove tile floor',
    task_status: false,
    project: project_1
)
Task.create(
    name: 'check about needed permits',
    task_status: false,
    project: project_1
)

Task.create(
    name: 'get quotes from plumber',
    task_status: false,
    project: project_2
)
Task.create(
    name: 'wall up stair crawl space',
    task_status: false,
    project: project_2
)
Task.create(
    name: 'measure, find, and purchase new furnace doors',
    task_status: false,
    project: project_2
)

Task.create(
    name: 'get quotes for backyard fencing',
    task_status: false,
    project: project_3
)
Task.create(
    name: 'remove stone pavers',
    task_status: false,
    project: project_3
)
Task.create(
    name: 'pull weeds',
    task_status: false,
    project: project_3
)

puts "✅ Done seeding!"
