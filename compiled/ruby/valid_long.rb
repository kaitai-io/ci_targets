# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ValidLong < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @magic1 = @_io.read_bytes(6)
    raise Kaitai::Struct::ValidationNotEqualError.new([80, 65, 67, 75, 45, 49].pack('C*'), magic1, _io, "/seq/0") if not magic1 == [80, 65, 67, 75, 45, 49].pack('C*')
    @uint8 = @_io.read_u1
    raise Kaitai::Struct::ValidationNotEqualError.new(255, uint8, _io, "/seq/1") if not uint8 == 255
    @sint8 = @_io.read_s1
    raise Kaitai::Struct::ValidationNotEqualError.new(-1, sint8, _io, "/seq/2") if not sint8 == -1
    @magic_uint = (@_io.read_bytes(10)).force_encoding("utf-8")
    raise Kaitai::Struct::ValidationNotEqualError.new("PACK-U-DEF", magic_uint, _io, "/seq/3") if not magic_uint == "PACK-U-DEF"
    @uint16 = @_io.read_u2le
    raise Kaitai::Struct::ValidationNotEqualError.new(65535, uint16, _io, "/seq/4") if not uint16 == 65535
    @uint32 = @_io.read_u4le
    raise Kaitai::Struct::ValidationNotEqualError.new(4294967295, uint32, _io, "/seq/5") if not uint32 == 4294967295
    @uint64 = @_io.read_u8le
    raise Kaitai::Struct::ValidationNotEqualError.new(18446744073709551615, uint64, _io, "/seq/6") if not uint64 == 18446744073709551615
    @magic_sint = (@_io.read_bytes(10)).force_encoding("utf-8")
    raise Kaitai::Struct::ValidationNotEqualError.new("PACK-S-DEF", magic_sint, _io, "/seq/7") if not magic_sint == "PACK-S-DEF"
    @sint16 = @_io.read_s2le
    raise Kaitai::Struct::ValidationNotEqualError.new(-1, sint16, _io, "/seq/8") if not sint16 == -1
    @sint32 = @_io.read_s4le
    raise Kaitai::Struct::ValidationNotEqualError.new(-1, sint32, _io, "/seq/9") if not sint32 == -1
    @sint64 = @_io.read_s8le
    raise Kaitai::Struct::ValidationNotEqualError.new(-1, sint64, _io, "/seq/10") if not sint64 == -1
    self
  end
  attr_reader :magic1
  attr_reader :uint8
  attr_reader :sint8
  attr_reader :magic_uint
  attr_reader :uint16
  attr_reader :uint32
  attr_reader :uint64
  attr_reader :magic_sint
  attr_reader :sint16
  attr_reader :sint32
  attr_reader :sint64
end
