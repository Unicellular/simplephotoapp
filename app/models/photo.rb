class Photo < ActiveRecord::Base
  has_attached_file :content,
    :storage => :dropbox,
    :dropbox_credentials => {
      app_key: ENV["DROPBOX_APP_KEY"],
      app_secret: ENV["DROPBOX_SECRET"],
      access_token: ENV["DB_ACCESS_TOKEN"],
      access_token_secret: ENV["DB_ACCESS_TOKEN_SECRET"],
      user_id: ENV["DB_USER_ID"],
      access_type: "app_folder"

    }
end
