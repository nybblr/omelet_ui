class AddQueryToOmeletUiTemplate < ActiveRecord::Migration
  def change
    add_column :omelet_ui_templates, :query, :text
  end
end
