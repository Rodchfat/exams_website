class AddUserIdToSurvey < ActiveRecord::Migration
  def change
    add_column :survey_answers, :user_id, :integer
  end
end
