# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class CombineEnum < Kaitai::Struct::Struct

  ANIMAL = {
    7 => :animal_pig,
    12 => :animal_horse,
  }
  I__ANIMAL = ANIMAL.invert
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @enum_u4 = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u4le)
    @enum_u2 = Kaitai::Struct::Stream::resolve_enum(ANIMAL, @_io.read_u2le)
    self
  end
  def enum_u4_u2
    return @enum_u4_u2 unless @enum_u4_u2.nil?
    @enum_u4_u2 = (false ? enum_u4 : enum_u2)
    @enum_u4_u2
  end
  attr_reader :enum_u4
  attr_reader :enum_u2
end
