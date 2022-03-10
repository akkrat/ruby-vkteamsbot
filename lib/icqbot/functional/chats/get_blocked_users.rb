require_relative '../../bot.rb'

module ICQ

  class Bot
    def get_blocked_users chat_id
      _ = JSON::load Requests.get(
        URLS_API::GET_BLOCKED_USERS, params: base_req(chat_id)).body
      _['users']
    end
  end

end