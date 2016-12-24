class AddBreweriesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :breweries do |t|
      t.text    :name,        default: ""
      t.text    :address
      t.text    :city
      t.text    :state
      t.text    :country
      t.text    :phone
      t.text    :description,    default: ""

      t.timestamps
    end
  end
end
