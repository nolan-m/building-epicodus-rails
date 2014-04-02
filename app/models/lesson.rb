class Lesson < ActiveRecord::Base

  validates :name, presence: true
  validates :content, presence: true
  belongs_to :section

  def next
    results = Lesson.find_by(:number => self.number + 1)
    if results.nil?
      self
    else
      results
    end
  end

  def previous
    results = Lesson.find_by(:number => self.number - 1)
    if results.nil?
      self
    else
      results
    end
  end

end
