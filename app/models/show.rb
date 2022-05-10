class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters

    def create_char(name, image, age)
        Character.create(name: name, image: image, age: age, show_id: self.id)
    end

    def delete_char(character)
        self.characters.destroy(character.id)

    end

end