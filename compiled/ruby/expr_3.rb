# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class Expr3 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end
  def _read
    @one = @_io.read_u1
    @two = (@_io.read_bytes(3)).force_encoding("ASCII")
  end
  def three
    return @three unless @three.nil?
    @three = "@" + two
    @three
  end
  def is_str_ge
    return @is_str_ge unless @is_str_ge.nil?
    @is_str_ge = two >= "ACK2"
    @is_str_ge
  end
  def is_str_ne
    return @is_str_ne unless @is_str_ne.nil?
    @is_str_ne = two != "ACK"
    @is_str_ne
  end
  def is_str_gt
    return @is_str_gt unless @is_str_gt.nil?
    @is_str_gt = two > "ACK2"
    @is_str_gt
  end
  def is_str_le
    return @is_str_le unless @is_str_le.nil?
    @is_str_le = two <= "ACK2"
    @is_str_le
  end
  def is_str_lt2
    return @is_str_lt2 unless @is_str_lt2.nil?
    @is_str_lt2 = three < two
    @is_str_lt2
  end
  def test_not
    return @test_not unless @test_not.nil?
    @test_not = !(false)
    @test_not
  end
  def is_str_lt
    return @is_str_lt unless @is_str_lt.nil?
    @is_str_lt = two < "ACK2"
    @is_str_lt
  end
  def four
    return @four unless @four.nil?
    @four = "_" + two + "_"
    @four
  end
  def is_str_eq
    return @is_str_eq unless @is_str_eq.nil?
    @is_str_eq = two == "ACK"
    @is_str_eq
  end
  attr_reader :one
  attr_reader :two
end
