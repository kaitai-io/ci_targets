# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class CombineBool < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @bool_bit = @_io.read_bits_int(1) != 0
    self
  end
  def bool_calc
    return @bool_calc unless @bool_calc.nil?
    @bool_calc = false
    @bool_calc
  end
  def bool_calc_bit
    return @bool_calc_bit unless @bool_calc_bit.nil?
    @bool_calc_bit = (true ? bool_calc : bool_bit)
    @bool_calc_bit
  end
  attr_reader :bool_bit
end
