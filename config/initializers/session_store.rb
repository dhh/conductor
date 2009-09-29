# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_conductor_session',
  :secret      => 'a0da464ff434600794cd8fbef072827c2a42ff75fd835ec2c2a86696803d19f82b93a5a7249114899118e6b1f6b0fbc97056a8b440adb224964857e7779fd683'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
