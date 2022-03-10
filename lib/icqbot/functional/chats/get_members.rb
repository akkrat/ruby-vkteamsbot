require_relative '../../bot.rb'

module ICQ

  class Bot
    def get_members chat_id, cursor=nil
      # TODO: сделать что-то с cursor
      _ = JSON::load Requests.get(
        URLS_API::GET_MEMBRS, params: base_req(chat_id)).body
      _['members']
    end
  end

end