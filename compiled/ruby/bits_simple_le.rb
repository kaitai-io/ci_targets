# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class BitsSimpleLe < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @byte_1 = @_io.read_bits_int_le(8)
    @byte_2 = @_io.read_bits_int_le(8)
    @bits_a = @_io.read_bits_int_le(1) != 0
    @bits_b = @_io.read_bits_int_le(3)
    @bits_c = @_io.read_bits_int_le(4)
    @large_bits_1 = @_io.read_bits_int_le(10)
    @spacer = @_io.read_bits_int_le(3)
    @large_bits_2 = @_io.read_bits_int_le(11)
    @_io.align_to_byte
    @normal_s2 = @_io.read_s2be
    @byte_8_9_10 = @_io.read_bits_int_le(24)
    @byte_11_to_14 = @_io.read_bits_int_le(32)
    @byte_15_to_19 = @_io.read_bits_int_le(40)
    @byte_20_to_27 = @_io.read_bits_int_le(64)
    self
  end
  def test_if_b1
    return @test_if_b1 unless @test_if_b1.nil?
    if bits_a == true
      @test_if_b1 = 123
    end
    @test_if_b1
  end
  attr_reader :byte_1
  attr_reader :byte_2
  attr_reader :bits_a
  attr_reader :bits_b
  attr_reader :bits_c
  attr_reader :large_bits_1
  attr_reader :spacer
  attr_reader :large_bits_2
  attr_reader :normal_s2
  attr_reader :byte_8_9_10
  attr_reader :byte_11_to_14
  attr_reader :byte_15_to_19
  attr_reader :byte_20_to_27
end
