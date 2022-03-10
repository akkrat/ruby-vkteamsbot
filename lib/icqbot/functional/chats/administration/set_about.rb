require_relative '../../../bot.rb'

module ICQ

  class Bot
    def set_about chat_id, about
      params = base_req chat_id
      params['about'] = about
      JSON::load Requests.get(
        URLS_API::SET_ABOUT, params: params).body
    end
  end

end