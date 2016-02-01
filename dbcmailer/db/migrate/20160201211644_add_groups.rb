class AddGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.references :admin

      t.timestamps null: false
    end
  end
end
