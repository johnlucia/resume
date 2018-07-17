class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
