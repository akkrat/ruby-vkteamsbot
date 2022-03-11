require_relative '../../../bot.rb'

module VKTeams

  class Bot
    def set_rules chat_id, rules
      params = base_req chat_id
      params['rules'] = rules
      JSON::load Requests.get(
        API.set_rules, params: params).body
    end
  end

end