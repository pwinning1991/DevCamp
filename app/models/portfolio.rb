class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies,
                                reject_if: lambda {|attr| attr['name'].blank? }

  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: "Angular")
  end

  def self.by_position
    order("postion ASC")
  end

  scope :ruby_on_rails, -> {where(subtitle: "Ruby on Rails")}

  after_initialize :set_defautls

  def set_defautls
    self.main_image ||= Placeholder.image_generator(height:650, width:400)
    self.thumb_image ||= Placeholder.image_generator(height:350, width:200)
  end
end
