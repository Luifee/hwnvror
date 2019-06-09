class CreateSqls < ActiveRecord::Migration[5.2]
  def change
    create_table :sqls do |t|
      t.string :email
      t.string :timestamps
      t.string :ip_address

      t.timestamps
    end

    add_index :sqls, :email, unique: true

  end
end
