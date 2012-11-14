class AddOmeletUiQueryToTemplate < ActiveRecord::Migration
  def change
    add_column :templates, :query, :text
  end
end
