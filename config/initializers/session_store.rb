# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_JSContact_session',
  :secret      => '714c409fe2181668f7aabdc7d8877d68af2d1fc69688181289c2063aed33594de52e77f605bb01d2a7a4bdfdfe2eab5cb260a3d823a04e20ca86576ca58d622c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
