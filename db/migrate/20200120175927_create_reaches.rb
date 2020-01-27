class CreateReaches < ActiveRecord::Migration[5.0]
  def change
    create_table :reaches do |t|
      t.string :whatyouwant
      t.string :howlongrun
      t.string :triedonline
      t.string :everspentmoney
      t.string :runningwebsite
      t.string :websitepurpose
      t.string :objectiveachieve
      t.string :investatleast
      t.string :name
      t.string :phonenumber
      t.string :whatsappnumber
      t.string :email

      t.timestamps
    end
  end
end
