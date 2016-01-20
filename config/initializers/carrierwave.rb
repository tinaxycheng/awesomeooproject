CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => "AKIAJNIPORAGSZWR4WKA",                        # required
    :aws_secret_access_key  => "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",
    :region => "us-west-2"                      # required
  }
  config.fog_directory  = "awesomeoo"                # required
end