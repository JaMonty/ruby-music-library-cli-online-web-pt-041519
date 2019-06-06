class MusicLibraryController

  def initialize(path = "./db/mp3s")
    MusicImporter.new(path).import
  end

  def call
    input = ""

    puts ("Welcome to your music library!")

    input = gets.strip
  end












end
