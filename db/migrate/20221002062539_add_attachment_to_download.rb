class AddAttachmentToDownload < ActiveRecord::Migration[5.0]
  def change
    add_column :downloads, :attachment, :string
  end
end
