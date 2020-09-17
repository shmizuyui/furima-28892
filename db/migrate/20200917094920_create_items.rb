class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :user,          null: false, foreign_key: true
      t.text       :description,   null: false
      t.integer    :category,      null: false
      t.integer    :condition,     null: false
      t.integer    :postage_payer, null: false
      t.integer    :prefecture,    null: false
      t.integer    :handing_time,  null: false
      t.integer    :price,         null: false
      t.timestamps
    end
  end
end
