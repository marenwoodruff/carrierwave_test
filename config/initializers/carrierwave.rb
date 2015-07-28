CarrierWave.configure do |config|
  config.fog_credentials = {
  	:provider =>              'AWS',                        # required
    :aws_access_key_id =>     ENV["aws_access_key_id"],                        # required
    :aws_secret_access_key => ENV["aws_secret_access_key"],
    :region => 								ENV["region"]
  }
  config.fog_directory  = ENV["bucket_name"]                     # required
end