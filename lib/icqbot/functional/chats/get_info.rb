require_relative '../../bot.rb'

module ICQ

  class Bot
    def get_info chat_id
      # TODO: make a class for chats, kind of
      params = base_req chat_id
      json = JSON::load Requests.get(URLS_API::GET_INFO, params: params).body
      return ICQ::User.new json if json['firstName']
    end
  end

end