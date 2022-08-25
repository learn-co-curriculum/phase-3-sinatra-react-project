# Phase 3 Project - Backend
This is the backend for a home improvment proejct management applciation.

## Requirments
* ruby 2.7.4
* sqlite3 3.37

## How To Use
Fork and clone
bundle install
run rake db:migrate db:seed
front [url]

### Models

Project
---
name/room
has many tasks 
project.task -> an array of tasks
cost
link

Task
---
name
belongs to project
task.project