# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EnumInvalid < Kaitai::Struct::Struct

  ANIMAL = {
    102 => :animal_dog,
    124 => :animal_cat,
  }
  I__ANIMAL = ANIMAL.invert
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @pet_1 = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u1)
    @pet_2 = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u1)
    self
  end
  attr_reader :pet_1
  attr_reader :pet_2
end
