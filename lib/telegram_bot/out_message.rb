module TelegramBot
  class OutMessage
    include Virtus.model
    attribute :chat, Channel
    attribute :text, String
    attribute :keyboard, Array[Array[String]]
    attribute :one_time_keyboard, Boolean

    def send_with(bot)
      bot.send_message(self)
    end

    def chat_friendly_name
      chat.friendly_name
    end

    def to_h
      hash = {
        text: text,
        chat_id: chat.id,
        keyboard: keyboard
      }
      if keyboard
        hash[:keyboard] = keyboard
      end
    end
  end
end
