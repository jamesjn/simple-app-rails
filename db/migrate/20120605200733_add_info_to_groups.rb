class AddInfoToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :info, :string
  end
end
