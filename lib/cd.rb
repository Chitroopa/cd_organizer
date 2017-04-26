class CD
  @@cds = []

  def initialize(title, num_songs)
    @title = title
    @num_songs = num_songs
    @id = @@cds.length() + 1
  end

  def title
    @title
  end

  def num_songs
    @num_songs
  end

  def id
    @id
  end

  def save
    @@cds.push(self)
  end

  def self.all
    @@cds
  end

  def self.clear
    @@cds = []
  end

  def self.find(id)
    found_cd = nil
    @@cds.each() do |cd|
      if cd.id().eql?(id)
        found_cd = cd
      end
    end
    return found_cd
  end
end
