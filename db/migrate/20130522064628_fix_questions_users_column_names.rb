class FixQuestionsUsersColumnNames < ActiveRecord::Migration
  def up
    rename_column :questions_users, :question_id_id, :question_id
    rename_column :questions_users, :user_id_id, :user_id
  end

  def down
    rename_column :questions_users, :question_id, :question_id_id
    rename_column :questions_users, :user_id, :user_id_id
  end
end
