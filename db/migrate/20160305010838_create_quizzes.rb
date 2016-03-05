class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.text :name
      t.text :description

      t.timestamps null: false
    end
  end
end
