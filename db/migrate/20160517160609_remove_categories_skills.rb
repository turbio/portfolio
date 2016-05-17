class RemoveCategoriesSkills < ActiveRecord::Migration
  def change
    drop_table :categories_skills
  end
end
