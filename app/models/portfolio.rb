class Portfolio < ApplicationRecord

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: "Angular")
  end

  scope :ruby_on_rails, -> {where(subtitle: "Ruby on Rails")}

  after_initialize :set_defatuls

  def set_defautls
    self.main_image ||= "https://placeholdit.co//i/600x400"
    self.thumb_image ||= "https://placeholdit.co//i/350x150"
  end
end
