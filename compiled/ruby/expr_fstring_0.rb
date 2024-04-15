# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprFstring0 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @seq_str = (@_io.read_bytes(5)).force_encoding("ASCII").encode('UTF-8')
    @seq_int = @_io.read_u1
    self
  end
  def empty
    return @empty unless @empty.nil?
    @empty = ""
    @empty
  end
  def head_and_int
    return @head_and_int unless @head_and_int.nil?
    @head_and_int = "abc=" + seq_int.to_s
    @head_and_int
  end
  def head_and_int_literal
    return @head_and_int_literal unless @head_and_int_literal.nil?
    @head_and_int_literal = "abc=" + 123.to_s
    @head_and_int_literal
  end
  def head_and_str
    return @head_and_str unless @head_and_str.nil?
    @head_and_str = "abc=" + seq_str
    @head_and_str
  end
  def head_and_str_literal
    return @head_and_str_literal unless @head_and_str_literal.nil?
    @head_and_str_literal = "abc=" + "foo"
    @head_and_str_literal
  end
  def literal
    return @literal unless @literal.nil?
    @literal = "abc"
    @literal
  end
  def literal_with_escapes
    return @literal_with_escapes unless @literal_with_escapes.nil?
    @literal_with_escapes = "abc\n\tt"
    @literal_with_escapes
  end
  attr_reader :seq_str
  attr_reader :seq_int
end
