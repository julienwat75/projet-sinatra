class CreerCommande < ActiveRecord::Migration
  def up
  end

  def change
    create_table :users do |t|
      t.string :nom
    end
  end

  def down
  end
end
