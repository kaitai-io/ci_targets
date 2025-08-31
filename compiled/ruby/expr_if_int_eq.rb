# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprIfIntEq < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @skip = @_io.read_bytes(2)
    @seq = @_io.read_s2le
    if true
      @seq_if = @_io.read_s2le
    end
    self
  end
  def calc
    return @calc unless @calc.nil?
    @calc = 16705
    @calc
  end
  def calc_eq_calc_if
    return @calc_eq_calc_if unless @calc_eq_calc_if.nil?
    @calc_eq_calc_if = calc == calc_if
    @calc_eq_calc_if
  end
  def calc_eq_lit
    return @calc_eq_lit unless @calc_eq_lit.nil?
    @calc_eq_lit = calc == 16705
    @calc_eq_lit
  end
  def calc_eq_seq_if
    return @calc_eq_seq_if unless @calc_eq_seq_if.nil?
    @calc_eq_seq_if = calc == seq_if
    @calc_eq_seq_if
  end
  def calc_if
    return @calc_if unless @calc_if.nil?
    if true
      @calc_if = 16705
    end
    @calc_if
  end
  def calc_if_eq_lit
    return @calc_if_eq_lit unless @calc_if_eq_lit.nil?
    @calc_if_eq_lit = calc_if == 16705
    @calc_if_eq_lit
  end
  def calc_if_eq_seq_if
    return @calc_if_eq_seq_if unless @calc_if_eq_seq_if.nil?
    @calc_if_eq_seq_if = calc_if == seq_if
    @calc_if_eq_seq_if
  end
  def seq_eq_calc
    return @seq_eq_calc unless @seq_eq_calc.nil?
    @seq_eq_calc = seq == calc
    @seq_eq_calc
  end
  def seq_eq_calc_if
    return @seq_eq_calc_if unless @seq_eq_calc_if.nil?
    @seq_eq_calc_if = seq == calc_if
    @seq_eq_calc_if
  end
  def seq_eq_lit
    return @seq_eq_lit unless @seq_eq_lit.nil?
    @seq_eq_lit = seq == 16705
    @seq_eq_lit
  end
  def seq_eq_seq_if
    return @seq_eq_seq_if unless @seq_eq_seq_if.nil?
    @seq_eq_seq_if = seq == seq_if
    @seq_eq_seq_if
  end
  def seq_if_eq_lit
    return @seq_if_eq_lit unless @seq_if_eq_lit.nil?
    @seq_if_eq_lit = seq_if == 16705
    @seq_if_eq_lit
  end
  attr_reader :skip
  attr_reader :seq
  attr_reader :seq_if
end
