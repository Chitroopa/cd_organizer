class Artist
  @@artists = []

  def initialize(name)
    @name = name
    @id = @@artists.length() + 1
    @cds = []
  end

  def name
    @name
  end

  def cds
    @cds
  end

  def id
    @id
  end

  def add_cd(cd)
    @cds.push(cd)
  end

  def save
    @@artists.push(self)
  end

  def self.all
    @@artists
  end

  def self.clear
    @@artists = []
  end

  def self.find(id)
    found_artist = nil
    @@artists.each() do |artist|
      if artist.id().eql?(id)
        found_artist = artist
      end
    end
    return found_artist
  end
end
