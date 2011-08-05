class CreateBankInfos < ActiveRecord::Migration
  def self.up
    create_table :bank_infos do |t|
      t.string :name
      t.string :ccno
      t.date :expdate

      t.timestamps
    end
  end

  def self.down
    drop_table :bank_infos
  end
end
