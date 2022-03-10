require_relative '../vkteamsbot.rb'

module VKTeams

  BOT_PREFIX = '/'

  module TypeEvent
    NEW_MSG     = 'newMessage'
    EDITED_MSG  = 'editedMessage'
    DELETED_MSG = 'deletedMessage'
    CALLBACK    = 'callbackQuery'
  end

  class Event
    attr_reader :type, :text, :msg_id, :chat_id, :from,
                :data, :query_id

    def initialize event_h
      # TODO: больше информации
      @event_h = event_h
      @type = event_h['type']
      @from = event_h['payload']['from']
      if @type != VKTeams::TypeEvent::CALLBACK
        @text = event_h['payload']['text']
        @msg_id = event_h['payload']['msgId']
        @chat_id = event_h['payload']['chat']['chatId']
      else
        @data = event_h['payload']['callbackData']
        @query_id = event_h['payload']['queryId']
        @chat_id = event_h['message']['chat']['chatId']
      end
    end

    def prefix?
      @text[0] == VKTeams::BOT_PREFIX if @text
    end

    def to_h; @event_h end
    def to_s; "Event(#{@type}" + (@text ? ", #{@text}" : '') + ')' end
  end

end