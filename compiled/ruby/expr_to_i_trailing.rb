# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprToITrailing < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    self
  end
  def to_i_r10
    return @to_i_r10 unless @to_i_r10.nil?
    @to_i_r10 = "9173abc".to_i
    @to_i_r10
  end
  def to_i_r13
    return @to_i_r13 unless @to_i_r13.nil?
    @to_i_r13 = "9173abc".to_i(13)
    @to_i_r13
  end
  def to_i_garbage
    return @to_i_garbage unless @to_i_garbage.nil?
    @to_i_garbage = "123_.^".to_i
    @to_i_garbage
  end
end
