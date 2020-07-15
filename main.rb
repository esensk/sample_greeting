require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: ENV['DISCORD_BOT_DISPATCH_TOKEN'], prefix: '!'

messages = File.open("./sample-message.txt").readlines
bot.command :greeting do |event|
    event << messages.sample
    nil
end

bot.run
