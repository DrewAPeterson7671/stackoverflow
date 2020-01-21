class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  validates :author, presence: true
  validates :quest_body, presence: true
  # validates_length_of :title, maximum: 100
  before_save(:titleize_question)

  private
  def titleize_question
    self.author = self.author.titleize
  end
end
