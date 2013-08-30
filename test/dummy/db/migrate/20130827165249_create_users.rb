class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :last
      t.string :name
      t.string :address
      t.string :phone
      t.string :gender

      t.timestamps
    end
  end
end
