# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EnumLongRangeS < Kaitai::Struct::Struct

  CONSTANTS = {
    -9223372036854775808 => :constants_long_min,
    -2147483649 => :constants_int_below_min,
    -2147483648 => :constants_int_min,
    0 => :constants_zero,
    2147483647 => :constants_int_max,
    2147483648 => :constants_int_over_max,
    9223372036854775807 => :constants_long_max,
  }
  I__CONSTANTS = CONSTANTS.invert
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @f1 = Kaitai::Struct::Stream::resolve_enum(CONSTANTS, @_io.read_s8be)
    @f2 = Kaitai::Struct::Stream::resolve_enum(CONSTANTS, @_io.read_s8be)
    @f3 = Kaitai::Struct::Stream::resolve_enum(CONSTANTS, @_io.read_s8be)
    @f4 = Kaitai::Struct::Stream::resolve_enum(CONSTANTS, @_io.read_s8be)
    @f5 = Kaitai::Struct::Stream::resolve_enum(CONSTANTS, @_io.read_s8be)
    @f6 = Kaitai::Struct::Stream::resolve_enum(CONSTANTS, @_io.read_s8be)
    @f7 = Kaitai::Struct::Stream::resolve_enum(CONSTANTS, @_io.read_s8be)
    self
  end
  attr_reader :f1
  attr_reader :f2
  attr_reader :f3
  attr_reader :f4
  attr_reader :f5
  attr_reader :f6
  attr_reader :f7
end
