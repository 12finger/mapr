class AddLongLatToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :latitude, :decimal, {:precision=>20, :scale=>17} 
    add_column :contacts, :longitude, :decimal, {:precision=>20, :scale=>17}
    add_column :contacts, :gmaps, :boolean
  end
end
