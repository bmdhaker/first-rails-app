class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :lib_clas

      t.timestamps
    end
  end
end
