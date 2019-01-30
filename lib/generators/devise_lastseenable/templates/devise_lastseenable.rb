unless defined?(Devise)
    require 'devise'
end
require 'devise_lastseenable'

Devise.add_module :lastseenable, :model => 'devise_lastseenable/model'

module DeviseLastseenable
    # Time interval to update the last seen.
    mattr_accessor :update_last_seen_time
    @@update_last_seen_time = 2.minutes
end

require 'devise_lastseenable/rails'