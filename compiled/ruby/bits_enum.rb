# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class BitsEnum < Kaitai::Struct::Struct

  ANIMAL = {
    0 => :animal_cat,
    1 => :animal_dog,
    4 => :animal_horse,
    5 => :animal_platypus,
  }
  I__ANIMAL = ANIMAL.invert
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @one = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_bits_int_be(4))
    @two = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_bits_int_be(8))
    @three = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_bits_int_be(1))
    self
  end
  attr_reader :one
  attr_reader :two
  attr_reader :three
end
