
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array_of_songs)
  array_of_songs.each_with_index { |song_name, index|
  puts "#{index + 1}. #{song_name}"}
end

def play(array_of_songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if array_of_songs.include?(user_input)
      puts "Playing #{user_input}"
  elsif (1..10).include?(user_input.to_i)
      puts "Playing #{array_of_songs[(user_input.to_i)-1]}"
  else
      puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_response = ""
  until user_response == "exit"
    puts "Please enter a command:"
    user_response = gets.chomp
    if user_response == "list"
      list
    elsif user_response == "play"
      play
    elsif user_response == "help"
      help
    else user_response == "exit"
      exit_jukebox
      break
    end
  end
end
