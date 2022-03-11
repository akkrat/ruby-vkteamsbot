require 'json'

require_relative '../vkteamsbot.rb'
require_relative './urls_api.rb'

require_relative './functional/send_msg.rb'
require_relative './functional/edit_msg.rb'
require_relative './functional/delete_msg.rb'
require_relative './functional/chats/get_info.rb'
require_relative './functional/chats/get_admins.rb'
require_relative './functional/chats/get_members.rb'
require_relative './functional/chats/administration/set_title.rb'
require_relative './functional/chats/administration/set_about.rb'
require_relative './functional/chats/administration/set_rules.rb'
require_relative './functional/chats/administration/pin_unpin_msg.rb'
require_relative './functional/chats/administration/block_unblock_user.rb'

module VKTeams

  class Bot
    attr_accessor :loop

    def initialize token, pool_time=30
      @token = token
      @pool_time = pool_time
      @last_event_id = 0
      @loop = true
      @handlers = {}
      @callback_handlers = {}
      yield self if block_given?
    end

    def get_events # /events/get
      params = {
        'token': @token,
        'lastEventId': @last_event_id,
        'pollTime': @pool_time
      }
      Requests.get(API.get_events, params: params)
    end

    def listen # event loop
      while @loop
        events = JSON::load(get_events.body)
        if events and events['events'] and events['events'] != []
          last_event = events['events'].last
          @last_event_id = last_event['eventId']
          last_event = VKTeams::Event.new last_event
          if @handlers.has_key? last_event.text
            @handlers[last_event.text].call last_event
          elsif last_event.type == VKTeams::TypeEvent::CALLBACK and @callback_handlers.has_key? last_event.data 
            @callback_handlers[last_event.text].call last_event
          else
            yield last_event
          end
        end
      end
    end

    def add_handler text, handler
      @handlers[text] = handler
    end

    def add_callback_handler data, handler
      @callback_handlers[data] = handler
    end

    private
      def base_req chat_id
        {
          'token': @token,
          'chatId': chat_id
        }
      end
  end

end