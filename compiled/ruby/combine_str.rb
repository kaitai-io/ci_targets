# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class CombineStr < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @str_term = (@_io.read_bytes_term(124, false, true, true)).force_encoding("ASCII").encode('UTF-8')
    @str_limit = (@_io.read_bytes(4)).force_encoding("ASCII").encode('UTF-8')
    @str_eos = (@_io.read_bytes_full).force_encoding("ASCII").encode('UTF-8')
    self
  end
  def term_or_eos
    return @term_or_eos unless @term_or_eos.nil?
    @term_or_eos = (false ? str_term : str_eos)
    @term_or_eos
  end
  def eos_or_calc_bytes
    return @eos_or_calc_bytes unless @eos_or_calc_bytes.nil?
    @eos_or_calc_bytes = (true ? str_eos : str_calc_bytes)
    @eos_or_calc_bytes
  end
  def limit_or_calc
    return @limit_or_calc unless @limit_or_calc.nil?
    @limit_or_calc = (false ? str_limit : str_calc)
    @limit_or_calc
  end
  def str_calc_bytes
    return @str_calc_bytes unless @str_calc_bytes.nil?
    @str_calc_bytes = (calc_bytes).force_encoding("ASCII").encode('UTF-8')
    @str_calc_bytes
  end
  def limit_or_calc_bytes
    return @limit_or_calc_bytes unless @limit_or_calc_bytes.nil?
    @limit_or_calc_bytes = (true ? str_limit : str_calc_bytes)
    @limit_or_calc_bytes
  end
  def eos_or_calc
    return @eos_or_calc unless @eos_or_calc.nil?
    @eos_or_calc = (false ? str_eos : str_calc)
    @eos_or_calc
  end
  def limit_or_eos
    return @limit_or_eos unless @limit_or_eos.nil?
    @limit_or_eos = (true ? str_limit : str_eos)
    @limit_or_eos
  end
  def str_calc
    return @str_calc unless @str_calc.nil?
    @str_calc = "bar"
    @str_calc
  end
  def calc_bytes
    return @calc_bytes unless @calc_bytes.nil?
    @calc_bytes = [98, 97, 122].pack('C*')
    @calc_bytes
  end
  def term_or_calc_bytes
    return @term_or_calc_bytes unless @term_or_calc_bytes.nil?
    @term_or_calc_bytes = (false ? str_term : str_calc_bytes)
    @term_or_calc_bytes
  end
  def term_or_limit
    return @term_or_limit unless @term_or_limit.nil?
    @term_or_limit = (true ? str_term : str_limit)
    @term_or_limit
  end
  def term_or_calc
    return @term_or_calc unless @term_or_calc.nil?
    @term_or_calc = (true ? str_term : str_calc)
    @term_or_calc
  end
  def calc_or_calc_bytes
    return @calc_or_calc_bytes unless @calc_or_calc_bytes.nil?
    @calc_or_calc_bytes = (false ? str_calc : str_calc_bytes)
    @calc_or_calc_bytes
  end
  attr_reader :str_term
  attr_reader :str_limit
  attr_reader :str_eos
end
