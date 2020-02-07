class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts, options: 'ROW_FORMAT=DYNAMIC' do |t|
      t.references :category
      t.text :title, null: false
      t.text :content
      t.timestamps
    end
  end
end