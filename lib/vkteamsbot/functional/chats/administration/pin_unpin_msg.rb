require_relative '../../../bot.rb'

module VKTeams

  class Bot
    def pin_msg msg_id, chat_id
      params = base_req chat_id
      params['msgId'] = msg_id
      JSON::load Requests.get(
        API.pin_message, params: params).body
    end

    def unpin_msg msg_id, chat_id
      params = base_req chat_id
      params['msgId'] = msg_id
      JSON::load Requests.get(
        API.unpin_message, params: params).body
    end
  end

end