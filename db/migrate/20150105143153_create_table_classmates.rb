class CreateTableClassmates < ActiveRecord::Migration
  def change
    create_table :classmates do |t|
      t.string :name
    end
  end
end
