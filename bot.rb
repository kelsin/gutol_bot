require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.psychosis.net"
    c.password = "gol08"
    c.nick = "gutol"
    c.channels = ["#hate"]
    c.reconnect = true
    c.messages_per_second = 100.0
    c.server_queue_size = 100
  end

  on :message, /^!wiki/ do |m|
    m.reply("http://doombot.com/mh/", true)
  end

  on :message, /^!cat/ do |m|
    m.reply("                     _")
    m.reply("                    / )")
    m.reply("                   ( (")
    m.reply("     A.-.A  .-\"\"-.  ) )")
    m.reply("    / , , \/      \/ /")
    m.reply("   =\  t  ;=    /   /")
    m.reply("     `--,'  .\"\"|   /")
    m.reply("         || |  \\\\ \\")
    m.reply("  jgs   ((,_|  ((,_\\")
    m.reply("http://www.xmission.com/~emailbox/ascii_cats.htm")
  end

  on :message, /achoo/ do |m|
    m.reply("Bless you", true)
  end

  on :message, /evan/ do |m|
    m.reply("gtfo")
  end

  on :message, /^!source/ do |m|
    m.replay("https://github.com/Kelsin/gutol_bot")
  end
end

bot.start
