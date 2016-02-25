class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :description
      t.text :answer
      t.text :option1
      t.text :option2
      t.text :option3
      t.text :option4

      t.timestamps null: false
    end
  end
end
