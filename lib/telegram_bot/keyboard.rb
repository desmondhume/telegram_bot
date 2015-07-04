module TelegramBot
  class Keyboard
    include Virtus.model
    attribute :options, Array[KeyboardOption]
  end
end
