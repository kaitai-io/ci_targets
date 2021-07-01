# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprStrEncodings < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @len_of_1 = @_io.read_u2le
    @str1 = (@_io.read_bytes(len_of_1)).force_encoding("ASCII")
    @len_of_2 = @_io.read_u2le
    @str2 = (@_io.read_bytes(len_of_2)).force_encoding("UTF-8")
    @len_of_3 = @_io.read_u2le
    @str3 = (@_io.read_bytes(len_of_3)).force_encoding("SJIS")
    @len_of_4 = @_io.read_u2le
    @str4 = (@_io.read_bytes(len_of_4)).force_encoding("CP437")
    self
  end
  def str4_gt_str_from_bytes
    return @str4_gt_str_from_bytes unless @str4_gt_str_from_bytes.nil?
    @str4_gt_str_from_bytes = str4 > ([180].pack('C*')).force_encoding("CP437")
    @str4_gt_str_from_bytes
  end
  def str1_eq
    return @str1_eq unless @str1_eq.nil?
    @str1_eq = str1 == "Some ASCII"
    @str1_eq
  end
  def str4_eq
    return @str4_eq unless @str4_eq.nil?
    @str4_eq = str4 == "\u2591\u2592\u2593"
    @str4_eq
  end
  def str3_eq_str2
    return @str3_eq_str2 unless @str3_eq_str2.nil?
    @str3_eq_str2 = str3 == str2
    @str3_eq_str2
  end
  def str4_gt_str_calc
    return @str4_gt_str_calc unless @str4_gt_str_calc.nil?
    @str4_gt_str_calc = str4 > "\u2524"
    @str4_gt_str_calc
  end
  def str2_eq
    return @str2_eq unless @str2_eq.nil?
    @str2_eq = str2 == "\u3053\u3093\u306b\u3061\u306f"
    @str2_eq
  end
  def str3_eq
    return @str3_eq unless @str3_eq.nil?
    @str3_eq = str3 == "\u3053\u3093\u306b\u3061\u306f"
    @str3_eq
  end
  attr_reader :len_of_1
  attr_reader :str1
  attr_reader :len_of_2
  attr_reader :str2
  attr_reader :len_of_3
  attr_reader :str3
  attr_reader :len_of_4
  attr_reader :str4
end
