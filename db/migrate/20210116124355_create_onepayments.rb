class CreateOnepayments < ActiveRecord::Migration[6.0]
  def change
    create_table :onepayments do |t|
      t.integer :month_id,null:false, numericality: { other_than: 1 } 
      t.integer :day_id,null:false , numericality: { other_than: 1 } 
      t.integer :store_id,null:false, numericality: { other_than: 1 } 
      t.integer :kisyu_id,null:false, numericality: { other_than: 1 } 
      t.string  :one_investment,null:false
      t.string  :one_recovery,null:false
      t.string  :one_balance_of_payment,null:false
      t.text    :one_rationale,null:false
      t.integer :user_id

      t.timestamps
    end
  end
end
