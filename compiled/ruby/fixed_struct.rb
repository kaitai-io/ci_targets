# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class FixedStruct < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
  end
  class Header < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @magic1 = @_io.ensure_fixed_contents([80, 65, 67, 75, 45, 49].pack('C*'))
      @uint8 = @_io.read_u1
      @sint8 = @_io.read_s1
      @magic_uint = @_io.ensure_fixed_contents([80, 65, 67, 75, 45, 85, 45, 68, 69, 70].pack('C*'))
      @uint16 = @_io.read_u2le
      @uint32 = @_io.read_u4le
      @uint64 = @_io.read_u8le
      @magic_sint = @_io.ensure_fixed_contents([80, 65, 67, 75, 45, 83, 45, 68, 69, 70].pack('C*'))
      @sint16 = @_io.read_s2le
      @sint32 = @_io.read_s4le
      @sint64 = @_io.read_s8le
      @magic_uint_le = @_io.ensure_fixed_contents([80, 65, 67, 75, 45, 85, 45, 76, 69].pack('C*'))
      @uint16le = @_io.read_u2le
      @uint32le = @_io.read_u4le
      @uint64le = @_io.read_u8le
      @magic_sint_le = @_io.ensure_fixed_contents([80, 65, 67, 75, 45, 83, 45, 76, 69].pack('C*'))
      @sint16le = @_io.read_s2le
      @sint32le = @_io.read_s4le
      @sint64le = @_io.read_s8le
      @magic_uint_be = @_io.ensure_fixed_contents([80, 65, 67, 75, 45, 85, 45, 66, 69].pack('C*'))
      @uint16be = @_io.read_u2be
      @uint32be = @_io.read_u4be
      @uint64be = @_io.read_u8be
      @magic_sint_be = @_io.ensure_fixed_contents([80, 65, 67, 75, 45, 83, 45, 66, 69].pack('C*'))
      @sint16be = @_io.read_s2be
      @sint32be = @_io.read_s4be
      @sint64be = @_io.read_s8be
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
    attr_reader :magic_uint_le
    attr_reader :uint16le
    attr_reader :uint32le
    attr_reader :uint64le
    attr_reader :magic_sint_le
    attr_reader :sint16le
    attr_reader :sint32le
    attr_reader :sint64le
    attr_reader :magic_uint_be
    attr_reader :uint16be
    attr_reader :uint32be
    attr_reader :uint64be
    attr_reader :magic_sint_be
    attr_reader :sint16be
    attr_reader :sint32be
    attr_reader :sint64be
  end
  def hdr
    return @hdr unless @hdr.nil?
    _pos = @_io.pos
    @_io.seek(0)
    @hdr = Header.new(@_io, self, @_root)
    @_io.seek(_pos)
    @hdr
  end
end
