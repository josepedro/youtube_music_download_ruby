require 'rubygems'
require 'streamio-ffmpeg'

file_name = "video_download"
youtube_url = "https://www.youtube.com/watch?v=evcsz4sD7Zo"

#system("youtube-dl", "-o", filename, youtube_url)

#system("ffmpeg", "-i", filename, "-ab", "191k", "-ac", "2", "-ar", "44100", "-vn", "audio.mp3")

number_audio = 1
File.open("links.txt", "r").each_line do |line|
  # name: "Angela"    job: "Writer"    ...
  system("youtube-dl", "-o", file_name, line)
  system("ffmpeg", "-i", file_name, "-ab", "191k", "-ac", "2", "-ar", "44100", "-vn", number_audio.to_s + ".mp3")
  number_audio = number_audio + 1
end
