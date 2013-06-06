class CreateTicketUpdates < ActiveRecord::Migration
  def change
    create_table :ticket_updates do |t|
      t.text :content
      t.string :user
      t.references :ticket

      t.timestamps
    end
    add_index :ticket_updates, :ticket_id
  end
end
