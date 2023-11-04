# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EnumIntRangeS < Kaitai::Struct::Struct

  CONSTANTS = {
    -2147483648 => :constants_int_min,
    0 => :constants_zero,
    2147483647 => :constants_int_max,
  }
  I__CONSTANTS = CONSTANTS.invert
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @f1 = Kaitai::Struct::Stream::resolve_enum(CONSTANTS, @_io.read_s4be)
    @f2 = Kaitai::Struct::Stream::resolve_enum(CONSTANTS, @_io.read_s4be)
    @f3 = Kaitai::Struct::Stream::resolve_enum(CONSTANTS, @_io.read_s4be)
    self
  end
  attr_reader :f1
  attr_reader :f2
  attr_reader :f3
end
