CarrierWave.configure do |config|

  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => "AKIAJF4TPJWQVNAMTAFA",
      :aws_secret_access_key  => "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",
      :region                 => 'us-west-1' # Change this for different AWS region. Default is 'us-east-1'
  }
  config.fog_directory  = "awesomeoo"
end