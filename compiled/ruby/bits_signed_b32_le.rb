# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class BitsSignedB32Le < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @a_num = @_io.read_bits_int_le(31)
    @a_bit = @_io.read_bits_int_le(1) != 0
    @b_num = @_io.read_bits_int_le(31)
    @b_bit = @_io.read_bits_int_le(1) != 0
    self
  end
  attr_reader :a_num
  attr_reader :a_bit
  attr_reader :b_num
  attr_reader :b_bit
end
