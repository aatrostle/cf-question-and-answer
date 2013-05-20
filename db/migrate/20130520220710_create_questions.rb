class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :answer
      t.string :last_edited_by

      t.timestamps
    end
  end
end
