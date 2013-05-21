class CreateQuestionsUsersTable < ActiveRecord::Migration
  def up
    create_table :questions_users, :id => false do |t|
      t.references :question_id
      t.references :user_id
    end
  end

  def down
    drop_table :questions_users
  end
end
