class AddWwwLinkToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :wwwLink, :string
  end
end
