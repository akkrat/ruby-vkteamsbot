require_relative '../../../bot.rb'

module ICQ

  class Bot
    def pin_msg msg_id, chat_id
      params = base_req chat_id
      params['msgId'] = msg_id
      JSON::load Requests.get(
        URLS_API::PIN_MSG, params: params).body
    end

    def unpin_msg msg_id, chat_id
      params = base_req chat_id
      params['msgId'] = msg_id
      JSON::load Requests.get(
        URLS_API::UNPIN_MSG, params: params).body
    end
  end

end