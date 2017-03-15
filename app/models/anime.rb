class Anime < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :topic

  def self.actionanime
     where(subtitle: "Action Anime")
  end

  scope :action_anime, -> { where(subtitle: "Action Anime") }

 #this runs when something happesn in the form/new action, or creating via scrip
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end



end