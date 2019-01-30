class DeviseAddLastseenable<%= table_name.camelize.singularize %> < ActiveRecord::Migration[5.2]
  def self.up
    add_column :<%= table_name %>, :last_seen, :datetime
  end
  
  def self.down
    remove_column :<%= table_name %>, :last_seen
  end
end