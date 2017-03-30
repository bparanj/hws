class CreateSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :submissions do |t|
      t.text :answer
      t.belongs_to :assignment, index: true
      
      t.timestamps
    end
  end
end
