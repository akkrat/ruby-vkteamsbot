require_relative '../../bot.rb'

module VKTeams

  class Bot
    def get_admins chat_id
      _ = JSON::load Requests.get(
        API.get_admins, params: base_req(chat_id)).body
      _['admins']
    end
  end

end