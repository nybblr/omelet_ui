class AddFormatToOmeletUiTemplate < ActiveRecord::Migration
  def change
    add_column :omelet_ui_templates, :format, :string
  end
end
