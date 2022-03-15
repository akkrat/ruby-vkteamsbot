require_relative '../../../bot.rb'

module VKTeams

  class Bot
    def set_about chat_id, about
      params = base_req chat_id
      params['about'] = about
      json_load Requests.get(
        API.set_about, params: params).body
    end
  end

end