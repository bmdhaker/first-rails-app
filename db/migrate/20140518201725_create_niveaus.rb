class CreateNiveaus < ActiveRecord::Migration
  def change
    create_table :niveaus do |t|
      t.string :lib_niv

      t.timestamps
    end
  end
end
