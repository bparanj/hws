class CreateHomeworks < ActiveRecord::Migration[5.0]
  def change
    create_table :homeworks do |t|
      t.string :title
      t.string :question
      t.date :due_date

      t.timestamps
    end
  end
end
