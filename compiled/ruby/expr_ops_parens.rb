# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprOpsParens < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    self
  end
  def bool_and
    return @bool_and unless @bool_and.nil?
    @bool_and = ( ((false) && (true))  ? 1 : 0)
    @bool_and
  end
  def str_0_to_4
    return @str_0_to_4 unless @str_0_to_4.nil?
    @str_0_to_4 = "01234"
    @str_0_to_4
  end
  def bool_or
    return @bool_or unless @bool_or.nil?
    @bool_or = ( ((!(false)) || (false))  ? 1 : 0)
    @bool_or
  end
  def f_e
    return @f_e unless @f_e.nil?
    @f_e = 2.72
    @f_e
  end
  def f_sum_to_int
    return @f_sum_to_int unless @f_sum_to_int.nil?
    @f_sum_to_int = ((f_pi + f_e)).to_i
    @f_sum_to_int
  end
  def str_concat_rev
    return @str_concat_rev unless @str_concat_rev.nil?
    @str_concat_rev = str_0_to_4 + str_5_to_9.reverse
    @str_concat_rev
  end
  def f_pi
    return @f_pi unless @f_pi.nil?
    @f_pi = 3.14
    @f_pi
  end
  def i_m13
    return @i_m13 unless @i_m13.nil?
    @i_m13 = -13
    @i_m13
  end
  def str_concat_len
    return @str_concat_len unless @str_concat_len.nil?
    @str_concat_len = str_0_to_4 + str_5_to_9.size
    @str_concat_len
  end
  def str_concat_to_i
    return @str_concat_to_i unless @str_concat_to_i.nil?
    @str_concat_to_i = str_0_to_4 + str_5_to_9.to_i
    @str_concat_to_i
  end
  def i_42
    return @i_42 unless @i_42.nil?
    @i_42 = 42
    @i_42
  end
  def i_sum_to_str
    return @i_sum_to_str unless @i_sum_to_str.nil?
    @i_sum_to_str = (i_42 + i_m13).to_s(10)
    @i_sum_to_str
  end
  def bool_eq
    return @bool_eq unless @bool_eq.nil?
    @bool_eq = (false == true ? 1 : 0)
    @bool_eq
  end
  def str_5_to_9
    return @str_5_to_9 unless @str_5_to_9.nil?
    @str_5_to_9 = "56789"
    @str_5_to_9
  end
  def str_concat_substr_2_to_7
    return @str_concat_substr_2_to_7 unless @str_concat_substr_2_to_7.nil?
    @str_concat_substr_2_to_7 = str_0_to_4 + str_5_to_9[2..(7 - 1)]
    @str_concat_substr_2_to_7
  end
end
