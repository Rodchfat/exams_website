class AddUserIdToSurveyAttempts < ActiveRecord::Migration
  def change
    add_column :survey_attempts, :user_id, :integer
  end
end
