class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :test1
      t.string :test2

      t.timestamps
    end
  end
end
