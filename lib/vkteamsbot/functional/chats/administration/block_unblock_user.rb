require_relative '../../../bot.rb'

module VKTeams

  class Bot
    def block_user user_id, chat_id, del_last_msg=false
      params = base_req_for_block_unblock_user user_id, chat_id, del_last_msg
      JSON::load Requests.get(
        URLS_API::BLOCK_USER, params: params).body
    end

    def unblock_user user_id, chat_id
      params = base_req_for_block_unblock_user user_id, chat_id
      JSON::load Requests.get(
        URLS_API::UNBLOCK_USER, params: params).body
    end

    private
      def base_req_for_block_unblock_user user_id, chat_id, del_last_msg=nil
        params = base_req chat_id
        params['userId'] = user_id
        params['delLastMessages'] = del_last_msg if del_last_msg
        return params
      end
  end

end