class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :topic
      t.date :date
      t.text :description
      t.string :type_of_meeting
      t.belongs_to :course, index: true

      t.timestamps
    end
  end
end
