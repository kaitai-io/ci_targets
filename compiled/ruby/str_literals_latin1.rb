# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class StrLiteralsLatin1 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @len_parsed = @_io.read_u2le
    @parsed = (@_io.read_bytes(len_parsed)).force_encoding("UTF-8")
    self
  end
  def parsed_eq_literal
    return @parsed_eq_literal unless @parsed_eq_literal.nil?
    @parsed_eq_literal = parsed == "\243"
    @parsed_eq_literal
  end
  attr_reader :len_parsed
  attr_reader :parsed
end
