require_relative '../../../bot.rb'

module ICQ

  class Bot
    def set_rules chat_id, rules
      params = base_req chat_id
      params['rules'] = rules
      JSON::load Requests.get(
        URLS_API::SET_RULES, params: params).body
    end
  end

end