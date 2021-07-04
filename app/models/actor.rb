class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    characters.collect do |ch|
      "#{ch.name} - #{ch.show.name}"
    end
  end

  def list_characters
    characters.collect{|c| c.name}
  end

  def list_shows
    characters.collect{|s| s.show.name}
  end
end