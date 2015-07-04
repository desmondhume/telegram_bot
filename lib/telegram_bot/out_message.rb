module TelegramBot
  class OutMessage
    include Virtus.model
    attribute :chat, Channel
    attribute :text, String
    attribute :reply_markup, String

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
        reply_markup: reply_markup
      }
    end
  end
end
