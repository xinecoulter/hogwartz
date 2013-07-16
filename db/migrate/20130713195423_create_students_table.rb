class CreateStudentsTable < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :name
      # t.references :house
      t.integer :house_id
      t.timestamps
    end
  end

  def down
    drop_table :students
  end
end
