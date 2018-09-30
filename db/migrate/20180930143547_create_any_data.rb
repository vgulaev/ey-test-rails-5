class CreateAnyData < ActiveRecord::Migration[5.2]
  def change
    create_table :any_data do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
