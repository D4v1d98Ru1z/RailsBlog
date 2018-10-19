class CreateNominas < ActiveRecord::Migration[5.2]
  def change
    create_table :nominas do |t|
      t.string :email
      t.decimal :salary
      t.string :position

      t.timestamps
    end
  end
end
