class Network < ActiveRecord::Base
    has_many :shows
    has_many :characters, through: :shows

    def create_show(name)
        Show.create(name: name, network_id: self.id)
    end

end