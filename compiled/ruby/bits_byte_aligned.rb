# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class BitsByteAligned < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @one = @_io.read_bits_int(6)
    @_io.align_to_byte
    @byte_1 = @_io.read_u1
    @two = @_io.read_bits_int(3)
    @three = @_io.read_bits_int(1) != 0
    @_io.align_to_byte
    @byte_2 = @_io.read_u1
    @four = @_io.read_bits_int(14)
    @_io.align_to_byte
    @byte_3 = @_io.read_bytes(1)
    @full_byte = @_io.read_bits_int(8)
    @_io.align_to_byte
    @byte_4 = @_io.read_u1
  end
  attr_reader :one
  attr_reader :byte_1
  attr_reader :two
  attr_reader :three
  attr_reader :byte_2
  attr_reader :four
  attr_reader :byte_3
  attr_reader :full_byte
  attr_reader :byte_4
end
