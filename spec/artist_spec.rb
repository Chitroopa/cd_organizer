require('rspec')
require('cd')
require('artist')

describe('Artist') do

  describe('#add_cd') do
    it("returns the CD for artist") do
      new_artist = Artist.new("Test artist")
      new_cd = CD.new("test cd title",13)
      expect(new_artist.add_cd(new_cd)).to eq([new_cd])
    end
  end

  describe('.find') do
    it("returns the object based on ID") do
      new_artist = Artist.new("Test artist")
      new_cd = CD.new("test cd title",13)
      new_artist.add_cd(new_cd)
      new_artist.save()
      expect(Artist.find(new_artist.id())).to eq(new_artist)
    end
  end
end
