class CreateClassifications < ActiveRecord::Migration[6.1]
  def change
    create_table :classifications do |t|

      t.timestamps
    end
  end
end
