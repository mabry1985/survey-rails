class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy
  before_save(:set_question_count)

  def question_counter
    query = Question.where("survey_id = '#{self.id}'")
    self.question_count = query.length
  end

  private
    def set_question_count
      self.question_count = 0
    end
end
