class AddModelToOmeletUiTemplate < ActiveRecord::Migration
  def change
    add_column :omelet_ui_templates, :model, :string
  end
end
