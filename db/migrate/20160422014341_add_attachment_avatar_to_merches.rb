class AddAttachmentAvatarToMerches < ActiveRecord::Migration
  def self.up
    change_table :merches do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :merches, :avatar
  end
end
