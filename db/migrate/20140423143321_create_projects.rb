class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :image_link
      t.string :project_link
      t.string :repo_link
      t.text :project_description
      t.string :erd_image
      t.string :thumbnail

      t.timestamps
    end
  end
end
