# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprIntDiv < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @int_u = @_io.read_u4le
    @int_s = @_io.read_s4le
    self
  end
  def div_neg_const
    return @div_neg_const unless @div_neg_const.nil?
    @div_neg_const = (-9837 / 13)
    @div_neg_const
  end
  def div_neg_seq
    return @div_neg_seq unless @div_neg_seq.nil?
    @div_neg_seq = (int_s / 13)
    @div_neg_seq
  end
  def div_pos_const
    return @div_pos_const unless @div_pos_const.nil?
    @div_pos_const = (9837 / 13)
    @div_pos_const
  end
  def div_pos_seq
    return @div_pos_seq unless @div_pos_seq.nil?
    @div_pos_seq = (int_u / 13)
    @div_pos_seq
  end
  attr_reader :int_u
  attr_reader :int_s
end
