class AddUserTable < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text    :first_name
      t.text    :last_name
      t.text    :country
      t.text    :phone

      t.timestamps
    end
  end
end
