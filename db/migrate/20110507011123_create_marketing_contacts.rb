class CreateMarketingContacts < ActiveRecord::Migration
  def self.up
    create_table :marketing_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :phone
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :website
      t.string :facebook
      t.string :twitter
      t.datetime :last_contact
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :marketing_contacts
  end
end
