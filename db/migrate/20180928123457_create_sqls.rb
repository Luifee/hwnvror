class CreateSqls < ActiveRecord::Migration[5.2]
  def change
    create_table :sqls do |t|
      t.string :name
      t.string :email
      t.string :time
      t.string :ip

      t.timestamps
    end
  end
end
