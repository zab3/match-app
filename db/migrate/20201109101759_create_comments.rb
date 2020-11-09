class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text       :text,  null: false, limit: 191
      t.references :user,  null: false, foreign_key: true
      t.references :tweet, null: false, foreign_key: true
      t.timestamps
    end
  end
end
