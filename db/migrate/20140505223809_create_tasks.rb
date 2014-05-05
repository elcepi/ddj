class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :enviroment

      t.timestamps
    end
  end
end
