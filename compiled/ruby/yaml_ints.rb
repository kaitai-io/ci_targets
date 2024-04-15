# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class YamlInts < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    self
  end
  def test_u4_dec
    return @test_u4_dec unless @test_u4_dec.nil?
    @test_u4_dec = 4294967295
    @test_u4_dec
  end
  def test_u4_hex
    return @test_u4_hex unless @test_u4_hex.nil?
    @test_u4_hex = 4294967295
    @test_u4_hex
  end
  def test_u8_dec
    return @test_u8_dec unless @test_u8_dec.nil?
    @test_u8_dec = 18446744073709551615
    @test_u8_dec
  end
  def test_u8_hex
    return @test_u8_hex unless @test_u8_hex.nil?
    @test_u8_hex = 18446744073709551615
    @test_u8_hex
  end
end
