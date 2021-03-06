class MusicImporter

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/","") }
  end

  def import
    files.each{ |fi| Song.create_from_filename(fi) }
  end
end
