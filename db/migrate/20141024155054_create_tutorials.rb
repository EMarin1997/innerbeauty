class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :title
      t.string :time
      t.text :materials

      t.timestamps
    end
  end
end
