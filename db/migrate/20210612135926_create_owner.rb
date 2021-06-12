class CreateOwner < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.references :dog

      t.timestamps
    end
  end
end
