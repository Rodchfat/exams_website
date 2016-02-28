class Question < ActiveRecord::Base
    validates :description, presence: true, length: {minimum: 10, maximum: 2300}
    validates :answer, presence: true, length: {minimum: 10, maximum: 2300}
    validates :option1, presence: true, length: {minimum: 10, maximum: 2300}
    validates :option2, presence: true, length: {minimum: 10, maximum: 2300}
    validates :option3, presence: true, length: {minimum: 10, maximum: 2300}
    validates :option4, presence: true, length: {minimum: 10, maximum: 2300}
end
