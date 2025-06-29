import telebot

# Токен прямо в коде (можно убрать позже)
TOKEN = '7996715950:AAGGMdqSfG08ulx0zQ_eSHJ3NTB3uzcegAA'
bot = telebot.TeleBot(TOKEN)

@bot.message_handler(commands=['start'])
def send_welcome(message):
    bot.send_message(message.chat.id, "Привет! Я бот Jambo. Готов помочь тебе в дороге!")

@bot.message_handler(commands=['help'])
def send_help(message):
    bot.send_message(message.chat.id, "Пока что доступна только команда /start. Скоро добавим больше.")

bot.polling()
