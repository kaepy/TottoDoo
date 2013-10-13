class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end

    create_table :categories_items do |t|
    	t.belongs_to :item
    	t.belongs_to :category
    end

  end

end
