class CreateCategoriesSkills < ActiveRecord::Migration
  def change
    create_table :categories_skills do |t|
      t.belongs_to :category, index: true
      t.belongs_to :skill, index: true
      t.timestamps null: false
    end
  end
end
