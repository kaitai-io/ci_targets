# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class BitsUnalignedB64Be < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @a = @_io.read_bits_int_be(1) != 0
    @b = @_io.read_bits_int_be(64)
    @c = @_io.read_bits_int_be(7)
    self
  end
  attr_reader :a
  attr_reader :b
  attr_reader :c
end
