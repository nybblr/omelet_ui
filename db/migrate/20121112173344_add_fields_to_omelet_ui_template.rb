class AddFieldsToOmeletUiTemplate < ActiveRecord::Migration
  def change
    add_column :omelet_ui_templates, :fields, :text
  end
end
