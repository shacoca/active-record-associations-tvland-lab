class Show < ActiveRecord::Base

    # attr_accessor :day, :season

    belongs_to :network
    # belongs_to :genre
    has_many :characters
    has_many :actors, through: :characters
    # belongs_to :season
    # belongs_to :day

    def actors_list
        self.actors.map{|actor| actor.full_name}
    end
  
end
