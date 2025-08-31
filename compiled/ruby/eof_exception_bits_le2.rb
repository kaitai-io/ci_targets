# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EofExceptionBitsLe2 < Kaitai::Struct::Struct
  attr_reader :_debug
  SEQ_FIELDS = ["pre_bits", "fail_bits"]
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    @_debug = {}
  end

  def _read
    (@_debug['pre_bits'] ||= {})[:start] = @_io.pos
    @pre_bits = @_io.read_bits_int_le(8)
    (@_debug['pre_bits'] ||= {})[:end] = @_io.pos
    (@_debug['fail_bits'] ||= {})[:start] = @_io.pos
    @fail_bits = @_io.read_bits_int_le(17)
    (@_debug['fail_bits'] ||= {})[:end] = @_io.pos
    self
  end
  attr_reader :pre_bits
  attr_reader :fail_bits
end
