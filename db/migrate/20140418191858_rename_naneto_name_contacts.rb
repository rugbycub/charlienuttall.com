class RenameNanetoNameContacts < ActiveRecord::Migration
  def change
    change_table :contacts do |t|
      t.rename :nane, :name
    end
  end
end
