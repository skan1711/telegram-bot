require \'telegram/bot\'
token = \'1200045145:AAGppsjaQCm_tBNJfJml1tuqCpNAnx00NrM\'
Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when \'Hello\'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when \'How are you ?\'
       bot.api.send_message(chat_id: message.chat.id, text: "I\'m ok. Thanks")
    when \'Do you know Maria Yui Ozawa Hatano?\'
       bot.api.send_message(chat_id: message.chat.id, text: "Sure. I love her. I alway watch her film")
    end
  end
end