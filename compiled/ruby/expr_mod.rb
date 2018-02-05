# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprMod < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @int_u = @_io.read_u4le
    @int_s = @_io.read_s4le
    self
  end
  def mod_pos_const
    return @mod_pos_const unless @mod_pos_const.nil?
    @mod_pos_const = (9837 % 13)
    @mod_pos_const
  end
  def mod_neg_const
    return @mod_neg_const unless @mod_neg_const.nil?
    @mod_neg_const = (-9837 % 13)
    @mod_neg_const
  end
  def mod_pos_seq
    return @mod_pos_seq unless @mod_pos_seq.nil?
    @mod_pos_seq = (int_u % 13)
    @mod_pos_seq
  end
  def mod_neg_seq
    return @mod_neg_seq unless @mod_neg_seq.nil?
    @mod_neg_seq = (int_s % 13)
    @mod_neg_seq
  end
  attr_reader :int_u
  attr_reader :int_s
end
