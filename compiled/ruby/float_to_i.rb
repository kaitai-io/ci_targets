# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class FloatToI < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @single_value = @_io.read_f4le
    @double_value = @_io.read_f8le
    if true
      @single_value_if = @_io.read_f4be
    end
    if true
      @double_value_if = @_io.read_f8be
    end
    self
  end
  def calc_float1
    return @calc_float1 unless @calc_float1.nil?
    @calc_float1 = 1.234
    @calc_float1
  end
  def calc_float2
    return @calc_float2 unless @calc_float2.nil?
    @calc_float2 = 1.5
    @calc_float2
  end
  def calc_float3
    return @calc_float3 unless @calc_float3.nil?
    @calc_float3 = 1.9
    @calc_float3
  end
  def calc_float4
    return @calc_float4 unless @calc_float4.nil?
    @calc_float4 = -2.7
    @calc_float4
  end
  def calc_if
    return @calc_if unless @calc_if.nil?
    @calc_if = 13.9
    @calc_if
  end
  def calc_if_i
    return @calc_if_i unless @calc_if_i.nil?
    @calc_if_i = calc_if.to_i
    @calc_if_i
  end
  def double_i
    return @double_i unless @double_i.nil?
    @double_i = double_value.to_i
    @double_i
  end
  def double_if_i
    return @double_if_i unless @double_if_i.nil?
    @double_if_i = double_value_if.to_i
    @double_if_i
  end
  def float1_i
    return @float1_i unless @float1_i.nil?
    @float1_i = calc_float1.to_i
    @float1_i
  end
  def float2_i
    return @float2_i unless @float2_i.nil?
    @float2_i = calc_float2.to_i
    @float2_i
  end
  def float3_i
    return @float3_i unless @float3_i.nil?
    @float3_i = calc_float3.to_i
    @float3_i
  end
  def float4_i
    return @float4_i unless @float4_i.nil?
    @float4_i = calc_float4.to_i
    @float4_i
  end
  def single_i
    return @single_i unless @single_i.nil?
    @single_i = single_value.to_i
    @single_i
  end
  def single_if_i
    return @single_if_i unless @single_if_i.nil?
    @single_if_i = single_value_if.to_i
    @single_if_i
  end
  attr_reader :single_value
  attr_reader :double_value
  attr_reader :single_value_if
  attr_reader :double_value_if
end
