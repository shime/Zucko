require "mongoid"

class DayType
  include Mongoid::Document

  field :title, type: String

  has_many :departures

  def self.radni
    where(title: "radni dan").first
  end

  def self.subota
    where(title: "subota").first
  end

  def self.nedjelja
    where(title: "nedjelja i blagdani").first
  end
end
