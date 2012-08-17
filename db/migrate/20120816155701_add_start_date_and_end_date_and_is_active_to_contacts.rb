class AddStartDateAndEndDateAndIsActiveToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :startDate, :datetime
    add_column :contacts, :endDate, :datetime
    add_column :contacts, :isActive, :boolean
  end
end
