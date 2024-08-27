# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprStrOps < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @one = (@_io.read_bytes(5)).force_encoding("ASCII").encode('UTF-8')
    self
  end
  def one_len
    return @one_len unless @one_len.nil?
    @one_len = one.size
    @one_len
  end
  def one_rev
    return @one_rev unless @one_rev.nil?
    @one_rev = one.reverse
    @one_rev
  end
  def one_substr_0_to_0
    return @one_substr_0_to_0 unless @one_substr_0_to_0.nil?
    @one_substr_0_to_0 = one[0...0]
    @one_substr_0_to_0
  end
  def one_substr_0_to_3
    return @one_substr_0_to_3 unless @one_substr_0_to_3.nil?
    @one_substr_0_to_3 = one[0...3]
    @one_substr_0_to_3
  end
  def one_substr_2_to_5
    return @one_substr_2_to_5 unless @one_substr_2_to_5.nil?
    @one_substr_2_to_5 = one[2...5]
    @one_substr_2_to_5
  end
  def one_substr_3_to_3
    return @one_substr_3_to_3 unless @one_substr_3_to_3.nil?
    @one_substr_3_to_3 = one[3...3]
    @one_substr_3_to_3
  end
  def to_i_attr
    return @to_i_attr unless @to_i_attr.nil?
    @to_i_attr = "9173".to_i
    @to_i_attr
  end
  def to_i_r10
    return @to_i_r10 unless @to_i_r10.nil?
    @to_i_r10 = "-072".to_i
    @to_i_r10
  end
  def to_i_r16
    return @to_i_r16 unless @to_i_r16.nil?
    @to_i_r16 = "47cf".to_i(16)
    @to_i_r16
  end
  def to_i_r2
    return @to_i_r2 unless @to_i_r2.nil?
    @to_i_r2 = "1010110".to_i(2)
    @to_i_r2
  end
  def to_i_r8
    return @to_i_r8 unless @to_i_r8.nil?
    @to_i_r8 = "721".to_i(8)
    @to_i_r8
  end
  def two
    return @two unless @two.nil?
    @two = "0123456789"
    @two
  end
  def two_len
    return @two_len unless @two_len.nil?
    @two_len = two.size
    @two_len
  end
  def two_rev
    return @two_rev unless @two_rev.nil?
    @two_rev = two.reverse
    @two_rev
  end
  def two_substr_0_to_10
    return @two_substr_0_to_10 unless @two_substr_0_to_10.nil?
    @two_substr_0_to_10 = two[0...10]
    @two_substr_0_to_10
  end
  def two_substr_0_to_7
    return @two_substr_0_to_7 unless @two_substr_0_to_7.nil?
    @two_substr_0_to_7 = two[0...7]
    @two_substr_0_to_7
  end
  def two_substr_4_to_10
    return @two_substr_4_to_10 unless @two_substr_4_to_10.nil?
    @two_substr_4_to_10 = two[4...10]
    @two_substr_4_to_10
  end
  attr_reader :one
end
