# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class Expr1 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @len_of_1 = @_io.read_u2le
    @str1 = (@_io.read_bytes(len_of_1_mod)).force_encoding("ASCII").encode('UTF-8')
    self
  end
  def len_of_1_mod
    return @len_of_1_mod unless @len_of_1_mod.nil?
    @len_of_1_mod = len_of_1 - 2
    @len_of_1_mod
  end
  def str1_len
    return @str1_len unless @str1_len.nil?
    @str1_len = str1.size
    @str1_len
  end
  attr_reader :len_of_1
  attr_reader :str1
end
