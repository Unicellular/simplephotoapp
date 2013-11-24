class AddContentToPhotos < ActiveRecord::Migration
  def change
    add_attachment :photos, :content
  end
end
