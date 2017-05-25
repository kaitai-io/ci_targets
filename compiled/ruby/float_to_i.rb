# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class FloatToI < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end
  def _read
    @single_value = @_io.read_f4le
    @double_value = @_io.read_f8le
  end
  def float2_i
    return @float2_i unless @float2_i.nil?
    @float2_i = (calc_float2).to_i
    @float2_i
  end
  def calc_float1
    return @calc_float1 unless @calc_float1.nil?
    @calc_float1 = 1.234
    @calc_float1
  end
  def float4_i
    return @float4_i unless @float4_i.nil?
    @float4_i = (calc_float4).to_i
    @float4_i
  end
  def calc_float3
    return @calc_float3 unless @calc_float3.nil?
    @calc_float3 = 1.9
    @calc_float3
  end
  def calc_float2
    return @calc_float2 unless @calc_float2.nil?
    @calc_float2 = 1.5
    @calc_float2
  end
  def float1_i
    return @float1_i unless @float1_i.nil?
    @float1_i = (calc_float1).to_i
    @float1_i
  end
  def double_i
    return @double_i unless @double_i.nil?
    @double_i = (double_value).to_i
    @double_i
  end
  def float3_i
    return @float3_i unless @float3_i.nil?
    @float3_i = (calc_float3).to_i
    @float3_i
  end
  def single_i
    return @single_i unless @single_i.nil?
    @single_i = (single_value).to_i
    @single_i
  end
  def calc_float4
    return @calc_float4 unless @calc_float4.nil?
    @calc_float4 = -(2.7)
    @calc_float4
  end
  attr_reader :single_value
  attr_reader :double_value
end
