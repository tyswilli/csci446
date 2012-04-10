# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Gamez::Application.initialize!

ENV['RECAPTCHA_PUBLIC_KEY']  = '6LdzB9ASAAAAAMQZ-2tzdf8RMv-OIb9I8IgV4u-t'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6LdzB9ASAAAAACcedTpGg4fqTKkq3Iz7LOI1ZMpn'