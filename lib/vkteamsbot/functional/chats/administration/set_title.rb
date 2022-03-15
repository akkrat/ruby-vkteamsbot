require_relative '../../../bot.rb'

module VKTeams

  class Bot
    def set_title chat_id, title
      params = base_req chat_id
      params['title'] = title
      json_load Requests.get(
        API.set_title, params: params).body
    end

    def title= o
      set_title *o
    end 
  end

end