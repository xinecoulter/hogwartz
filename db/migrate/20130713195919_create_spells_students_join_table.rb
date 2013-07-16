class CreateSpellsStudentsJoinTable < ActiveRecord::Migration
  def up
    create_table :spells_students, :id => false do |t|
      t.integer :spell_id
      t.integer :student_id
    end
  end

  def down
    drop_table :spells_students
  end
end
