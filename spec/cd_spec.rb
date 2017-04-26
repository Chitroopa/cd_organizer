require('rspec')
require('cd')

describe('CD') do
  before() do
    CD.clear()
  end

  describe('#title') do
    it("returns the CD title") do
      new_cd = CD.new("test cd title",13)
      expect(new_cd.title()).to eq("test cd title")
    end
  end

  describe('#num_songs') do
    it("returns the CD number of songs") do
      new_cd = CD.new("test cd title",13)
      expect(new_cd.num_songs()).to eq(13)
    end
  end

  describe('#id') do
    it("returns the CD id") do
      new_cd = CD.new("test cd title",13)
      new_cd.save()
      new_cd2 = CD.new("test cd title 2",14)
      new_cd2.save()
      expect(new_cd.id()).to eq(1)
      expect(new_cd2.id()).to eq(2)
    end
  end

  describe('.all') do
    it("returns multiple CD objects") do
      new_cd = CD.new("test cd title",13)
      new_cd.save()
      new_cd2 = CD.new("test cd title 2",14)
      new_cd2.save()
      expect(CD.all()).to eq([new_cd, new_cd2])
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(CD.all()).to eq([])
    end
  end

  describe("#save") do
    it("will save cd to class variable") do
      new_cd = CD.new("test cd title", 13)
      new_cd.save()
      expect(CD.all()).to eq([new_cd])
    end
  end

  describe(".find") do
    it("return object based on ID") do
      new_cd = CD.new("test cd title",13)
      new_cd.save()
      new_cd2 = CD.new("test cd title 2",14)
      new_cd2.save()
      expect(CD.find(new_cd2.id())).to eq(new_cd2)
    end
  end

end
