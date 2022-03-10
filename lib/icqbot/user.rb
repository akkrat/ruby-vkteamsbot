require_relative '../icqbot.rb'

module ICQ

  class User
    attr_reader :first_name, :last_name, :photo, :type

    def initialize user_h
      @first_name = user_h['firstName']
      @last_name = user_h['lastName']
      @photo = user_h['photo'].first['url']
      @type = user_h['type']
    end
  end

end