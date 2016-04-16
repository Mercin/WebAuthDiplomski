class CreateKeyfiles < ActiveRecord::Migration
  def change
    create_table :keyfiles do |t|
      t.string :filename
      t.string :url

      t.timestamps null: false
    end
  end
end
