# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EnumToIClassBorder1 < Kaitai::Struct::Struct

  ANIMAL = {
    4 => :animal_dog,
    7 => :animal_cat,
    12 => :animal_chicken,
  }
  I__ANIMAL = ANIMAL.invert
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @pet_1 = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u4le)
    @pet_2 = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u4le)
    self
  end
  def checker
    return @checker unless @checker.nil?
    _pos = @_io.pos
    @_io.seek(0)
    @checker = EnumToIClassBorder2.new(@_io, _root)
    @_io.seek(_pos)
    @checker
  end
  def some_dog
    return @some_dog unless @some_dog.nil?
    @some_dog = Kaitai::Struct::Stream::resolve_enum(ANIMAL, 4)
    @some_dog
  end
  attr_reader :pet_1
  attr_reader :pet_2
end
