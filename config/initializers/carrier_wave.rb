if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :Provider => 'GCP',
      :region   => ENV['us-east1'],
      :gcp_access_key_id => ENV['GOOGBPPTDAHEID65AGEIZ7BE'],
      :gcp_secret_access_key => ENV['JeR/i8i9b7EKbLlLZqfkQwvCpBLIHTOothVmUili']
    }
    config.fog_directory = ENV['sample_my_bucket']
  end
end