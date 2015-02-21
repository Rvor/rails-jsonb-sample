class User < ActiveRecord::Base
  serialize :preferences, HashSerializer
  store_accessor :preferences, :blog
end
