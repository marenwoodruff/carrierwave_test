CarrierWave.configure do |config|
  config.fog_credentials = {
  	:PROVIDER =>              'AWS',                        # required
    :AWS_ACCESS_KEY_ID =>     ENV["AWS_ACCESS_KEY_ID"],                        # required
    :AWS_SECRET_ACCESS_KEY => ENV["AWS_SECRET_ACCESS_KEY"],
    :REGION => 								ENV["REGION"]
  }
  config.fog_directory  = ENV["BUCKET_NAME"]                     # required
end