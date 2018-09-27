class UserPrelab < ApplicationRecord
  belongs_to :user
  belongs_to :prelab
  has_many :question_option_selections
  has_many :question_text_answers

  def self.get_grade(user,prelab)
    user_prelab = UserPrelab.find_by(user:user,prelab:prelab)
    if user_prelab.nil?
      return 1
    else
      return 7
    end

  end

  def get_state
    questions= self.prelab.questions
    completed = true
    question_option_selections = self.question_option_selections
    questions.each do |question|

      if question.is_multiple_selection
        questions_options = QuestionOption.where(question:questions)
        if question_option_selections.where(question_option:questions_options).empty?
          completed=false
        end
      else
        question_text_answer = QuestionTextAnswer.find_by(user_prelab:self,question:question)
        if question_text_answer.nil?
          completed = false
        end
      end
    end

    return completed
  end

  def get_questions_grade
    grades_sum=0
    self.prelab.questions.each do |question|
      grades_count=0
      if question.is_multiple_selection
        grade=7
        correct_options = question.question_options.where(correct:true)

        question_option_selections = self.question_option_selections.where(question_option:question.question_options.collect{|r| r.id})
        if question_option_selections.empty? || question_option_selections.where(question_option:correct_options).empty?

          grades_sum+=1
          next
        else

          question_option_selections.each do |question_option_selection|
            if !question_option_selection.question_option.correct?
              grade-=1
            end
          end
          grades_sum+=grade
        end

      else

        question_answer = self.question_text_answers.find_by(question:question)
        grade = question_answer.grade
        if grade.nil?
          grades_sum+=1
        else
          grades_sum+=grade
        end
      end

    end

    questions_grade = grades_sum/self.prelab.questions.count

    return questions_grade
  end
end
