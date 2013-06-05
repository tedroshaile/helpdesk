class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :content
      t.string :user

      t.timestamps
    end
  end
end
