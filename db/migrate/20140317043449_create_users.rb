class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :weekly_avail_hr

      t.timestamps
    end
  end
end
