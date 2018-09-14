class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :topic
      t.date :date
      t.text :description
      t.belongs_to :course, index: true

      t.timestamps
    end
  end
end
