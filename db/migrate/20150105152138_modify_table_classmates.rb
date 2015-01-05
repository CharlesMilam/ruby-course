class ModifyTableClassmates < ActiveRecord::Migration
  def change
    change_table :classmates do |t|
      t.remove :name
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :hair_color
      t.string :ssn
    end
  end
end
