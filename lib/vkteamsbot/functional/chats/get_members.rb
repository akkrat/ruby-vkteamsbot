require_relative '../../bot.rb'

module VKTeams

  class Bot
    def get_members chat_id, cursor=nil
      # TODO: сделать что-то с cursor
      _ = json_load Requests.get(
        API.get_members, params: base_req(chat_id)).body
      _['members']
    end
  end

end