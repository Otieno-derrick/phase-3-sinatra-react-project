class CreateAll < ActiveRecord::Migration[6.1]
  def change
    create_table :all do |t|
      t.string :name
    end
  end
end
