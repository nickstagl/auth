# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
password = "puppies"
puts password
encrypted_password = BCrypt::Password.create(password)
puts encrypted_password
# 2. prepare encrypted string for testing
submitted_password = "kittens"
encrypted_test = BCrypt::Password.new(encrypted_password)
puts encrypted_test
puts encrypted_test == encrypted_password
# 3. test secret against prepared encrypted string
