class Answer < ApplicationRecord
  belongs_to :question
  validates :ans_author, presence: true
  validates :resp_body, presence: true
  validates :rating, presence: true

  # validates_length_of :title, maximum: 100
  before_save(:titleize_answer)

  private
  def titleize_answer
    self.ans_author = self.ans_author.titleize
  end

end
