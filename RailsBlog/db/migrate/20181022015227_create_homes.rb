class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :user
      t.string :title
      t.string :description
      t.string :body

      t.timestamps
    end
  end
end
