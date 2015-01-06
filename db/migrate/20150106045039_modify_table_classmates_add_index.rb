class ModifyTableClassmatesAddIndex < ActiveRecord::Migration
  def change
    add_index :classmates, :ssn, unique: true
  end
end
