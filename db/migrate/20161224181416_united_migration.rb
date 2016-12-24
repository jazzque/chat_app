class UnitedMigration < ActiveRecord::Migration[5.0]
  def change
    create_table :beers do |t|
      t.integer :brewery_id
      t.text    :name,        default: ""
      t.integer :cat_id
      t.integer :style_id
      t.text    :description,    default: ""

      t.timestamps
    end
  end
end
