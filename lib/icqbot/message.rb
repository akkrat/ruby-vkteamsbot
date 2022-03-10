require_relative '../icqbot.rb'

module ICQ

  class Message
    attr_reader :text, :keyboard

    def initialize obj, *keyboard
      @text = obj
      @keyboard = keyboard
    end

    def << btn
      return @keyboard << btn if btn.is_a? ICQ::Button
      raise ArgumentError.new 'btn must be a Button'
    end

    alias_method :append, :<<
  end

  class Button
    def initialize text, style:'attention', url:nil, call_back_data:nil
      @button = {
        'text': text,
        'style': style,
      }
      @button['url'] = url if url
      @button['callbackData'] = call_back_data if call_back_data
    end

    def to_h
      @button
    end
  end

end