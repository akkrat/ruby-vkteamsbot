require_relative '../bot.rb'

module VKTeams

  class Bot
    def send_msg msg, chat_id
      params = create_message_params msg, chat_id
      JSON::load Requests.get(API.send_text, params: params).body
    end

    private
      def create_message_params msg, chat_id
        params = base_req chat_id
        if msg.is_a? VKTeams::Message
          params['text'] = msg.text
          if msg.keyboard and msg.keyboard != []
            kb = msg.keyboard.map(&:to_h).map(&:to_json)
            params['inlineKeyboardMarkup'] = "[[#{kb.join(',')}]]"
          end
        elsif msg.is_a? String
          params['text'] = msg
        else
          raise ArgumentError.new "message can't be a #{msg.class}"
        end
        return params
      end
  end

end