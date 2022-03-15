require_relative '../../bot.rb'

module VKTeams

  class Bot
    def get_blocked_users chat_id
      _ = json_load Requests.get(
        API.get_blocked_users, params: base_req(chat_id)).body
      _['users']
    end
  end

end