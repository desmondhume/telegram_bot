module TelegramBot
  class KeyboardOption
    include Virtus.model
    attribute :value, Array[String]
  end
end
