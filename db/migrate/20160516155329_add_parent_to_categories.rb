class AddParentToCategories < ActiveRecord::Migration
  def change
    add_reference :categories, :parent, index: true, foreign_key: true
  end
end
