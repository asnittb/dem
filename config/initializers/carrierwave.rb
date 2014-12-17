CarrierWave.configure do |config|
  config.dropbox_app_key = "7leu16is2gyrkg5"
  config.dropbox_app_secret = ENV["app_secret"]
  config.dropbox_access_token_secret = ENV["app_token_secret"]
  config.dropbox_user_id = "195993065"
  config.dropbox_access_type = "app_folder"
end