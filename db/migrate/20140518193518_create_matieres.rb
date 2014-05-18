class CreateMatieres < ActiveRecord::Migration
  def change
    create_table :matieres do |t|
      t.string :lib_mat

      t.timestamps
    end
  end
end
