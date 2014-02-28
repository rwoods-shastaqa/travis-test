class CreateTestTravis < ActiveRecord::Migration
  def change
    create_table :test_travis do |t|
      t.string :test1
      t.string :test2

      t.timestamps
    end
  end
end
