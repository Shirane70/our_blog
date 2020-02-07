class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories, options: 'ROW_FORMAT=DYNAMIC' do |t|
      t.string :slug, null: false
    end
  end
end