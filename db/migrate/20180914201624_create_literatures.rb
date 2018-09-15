class CreateLiteratures < ActiveRecord::Migration[5.2]
  def change
    create_table :literatures do |t|
      t.string :title
      t.belongs_to :session, index: true

      t.timestamps
    end
  end
end
