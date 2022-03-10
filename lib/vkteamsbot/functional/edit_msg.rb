require_relative '../bot.rb'

module VKTeams

  class Bot
    def edit_msg msg, msg_id, chat_id
      params = create_message_params msg, chat_id
      params['msgId'] = msg_id
      JSON::load Requests.get(URLS_API::EDIT_MSG, params: params).body
    end
  end

end