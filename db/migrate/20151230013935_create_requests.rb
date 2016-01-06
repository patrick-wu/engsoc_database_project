class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :club
      t.integer :year
      t.string :category
      t.decimal :amount_requested
      t.decimal :amount_approved
      t.string :funding_round
      t.string :comments
      t.integer :students_affected
    end
  end
end
