require_relative '../../../bot.rb'

module ICQ

  class Bot
    def set_title chat_id, title
      params = base_req chat_id
      params['title'] = title
      JSON::load Requests.get(
        URLS_API::SET_TITLE, params: params).body
    end

    def title= o
      set_title *o
    end 
  end

end