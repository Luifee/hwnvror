class CreateOveralls < ActiveRecord::Migration[5.2]
  def change
    create_table :overalls do |t|
      t.string :name
      t.string :email
      t.string :birthday
      t.string :password

      t.timestamps
    end
  end
end
