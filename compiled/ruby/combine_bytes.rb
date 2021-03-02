# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class CombineBytes < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @bytes_term = @_io.read_bytes_term(124, false, true, true)
    @bytes_limit = @_io.read_bytes(4)
    @bytes_eos = @_io.read_bytes_full
    self
  end
  def limit_or_calc
    return @limit_or_calc unless @limit_or_calc.nil?
    @limit_or_calc = (false ? bytes_limit : bytes_calc)
    @limit_or_calc
  end
  def term_or_limit
    return @term_or_limit unless @term_or_limit.nil?
    @term_or_limit = (true ? bytes_term : bytes_limit)
    @term_or_limit
  end
  def limit_or_eos
    return @limit_or_eos unless @limit_or_eos.nil?
    @limit_or_eos = (true ? bytes_limit : bytes_eos)
    @limit_or_eos
  end
  def eos_or_calc
    return @eos_or_calc unless @eos_or_calc.nil?
    @eos_or_calc = (true ? bytes_eos : bytes_calc)
    @eos_or_calc
  end
  def term_or_calc
    return @term_or_calc unless @term_or_calc.nil?
    @term_or_calc = (true ? bytes_term : bytes_calc)
    @term_or_calc
  end
  def bytes_calc
    return @bytes_calc unless @bytes_calc.nil?
    @bytes_calc = [82, 110, 68].pack('C*')
    @bytes_calc
  end
  def term_or_eos
    return @term_or_eos unless @term_or_eos.nil?
    @term_or_eos = (false ? bytes_term : bytes_eos)
    @term_or_eos
  end
  attr_reader :bytes_term
  attr_reader :bytes_limit
  attr_reader :bytes_eos
end
