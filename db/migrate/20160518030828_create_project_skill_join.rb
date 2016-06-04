class CreateProjectSkillJoin < ActiveRecord::Migration
  def change
    create_join_table :projects, :skills
  end
end
