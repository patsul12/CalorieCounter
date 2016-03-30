class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.belongs_to :food, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.float :amount

      t.timestamps null: false
    end
  end
end
