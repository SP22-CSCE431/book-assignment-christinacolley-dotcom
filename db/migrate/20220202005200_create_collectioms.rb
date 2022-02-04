class CreateCollectioms < ActiveRecord::Migration[6.1]
  def change
    create_table :collectioms do |t|
      t.string :title

      t.timestamps
    end
  end
end
