class Lesson < ActiveRecord::Base
  validates :name, presence: true
  validates :content, presence: true
  belongs_to :section

  def slug
    name.downcase.gsub(" ", "-")
  end
end
