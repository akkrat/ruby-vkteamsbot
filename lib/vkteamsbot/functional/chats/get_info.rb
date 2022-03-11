require_relative '../../bot.rb'

module VKTeams

  class Bot
    def get_info chat_id
      # TODO: make a class for chats, kind of
      params = base_req chat_id
      json = JSON::load Requests.get(API.get_info, params: params).body
      return VKTeams::User.new json if json['firstName']
    end
  end

end