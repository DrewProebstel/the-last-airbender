class Character

  attr_reader :allies,
              :enemies,
              :name,
              :affiliation,
              :photoUrl

  def initialize(data)
    @allies = data[:allies]
    @enemies = data[:enemies]
    @name = data[:name]
    @affiliation = data[:affiliation]
    @photoUrl = data[:photoUrl]
  end
end
