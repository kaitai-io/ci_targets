# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class BitsSeqEndianCombo < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @be1 = @_io.read_bits_int_be(6)
    @be2 = @_io.read_bits_int_be(10)
    @le3 = @_io.read_bits_int_le(8)
    @be4 = @_io.read_bits_int_be(8)
    @le5 = @_io.read_bits_int_le(5)
    @le6 = @_io.read_bits_int_le(6)
    @le7 = @_io.read_bits_int_le(5)
    @be8 = @_io.read_bits_int_be(1) != 0
    self
  end
  attr_reader :be1
  attr_reader :be2
  attr_reader :le3
  attr_reader :be4
  attr_reader :le5
  attr_reader :le6
  attr_reader :le7
  attr_reader :be8
end
