class Character < ActiveRecord::Base 
    belongs_to :user
    belongs_to :template

    def create_new_character(name, history, character_class)
        Character.create(name: name, history: history, user_id: user.id, template_id: Template.all.where(character_class: character_class).pluck(:id).sample)
    end

end