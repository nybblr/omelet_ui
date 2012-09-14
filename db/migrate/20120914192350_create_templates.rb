class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :title
      t.text :description
      t.text :layout
      t.string :status

      t.timestamps
    end
  end
end
