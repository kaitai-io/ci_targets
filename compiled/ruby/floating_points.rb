# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class FloatingPoints < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @single_value = @_io.read_f4le
    @double_value = @_io.read_f8le
    @single_value_be = @_io.read_f4be
    @double_value_be = @_io.read_f8be
    @approximate_value = @_io.read_f4le
    self
  end
  def double_value_plus_float
    return @double_value_plus_float unless @double_value_plus_float.nil?
    @double_value_plus_float = double_value + 0.05
    @double_value_plus_float
  end
  def single_value_plus_float
    return @single_value_plus_float unless @single_value_plus_float.nil?
    @single_value_plus_float = single_value + 0.5
    @single_value_plus_float
  end
  def single_value_plus_int
    return @single_value_plus_int unless @single_value_plus_int.nil?
    @single_value_plus_int = single_value + 1
    @single_value_plus_int
  end
  attr_reader :single_value
  attr_reader :double_value
  attr_reader :single_value_be
  attr_reader :double_value_be
  attr_reader :approximate_value
end
