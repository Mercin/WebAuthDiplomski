class CreateRequestinfos < ActiveRecord::Migration
  def change
    create_table :requestinfos do |t|
      t.string :filename
      t.string :key

      t.timestamps null: false
    end
  end
end
