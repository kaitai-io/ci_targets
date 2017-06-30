# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class StrLiterals < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    self
  end
  def octal_eatup2
    return @octal_eatup2 unless @octal_eatup2.nil?
    @octal_eatup2 = "\0022"
    @octal_eatup2
  end
  def backslashes
    return @backslashes unless @backslashes.nil?
    @backslashes = "\\\\\\"
    @backslashes
  end
  def octal_eatup
    return @octal_eatup unless @octal_eatup.nil?
    @octal_eatup = "\00022"
    @octal_eatup
  end
  def double_quotes
    return @double_quotes unless @double_quotes.nil?
    @double_quotes = "\"\"\""
    @double_quotes
  end
  def complex_str
    return @complex_str unless @complex_str.nil?
    @complex_str = "\000\001\002\a\b\n\r\t\v\f\e=\a\n$\u263b"
    @complex_str
  end
end
