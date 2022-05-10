class Character < ActiveRecord::Base
    belongs_to :show

    def update_age(age)
        self.update(age: age)
    end

end