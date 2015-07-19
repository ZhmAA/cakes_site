require 'dragonfly'
require 'dragonfly/s3_data_store'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "32492faf78c180852043efb738853420752bdcb31453b253cbf2da015096eedf"

  url_format "/media/:job/:name"

if Rails.env.development?
  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
else
  datastore :s3,
    bucket_name: 'bucket_name',
    access_key_id: 'access_key_id',
    secret_access_key: 'secret_access_key'
end

end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
