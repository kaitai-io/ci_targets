# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ToStringCustom < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @s1 = (@_io.read_bytes_term(124, false, true, true)).force_encoding("UTF-8")
    @s2 = (@_io.read_bytes_term(124, false, true, true)).force_encoding("UTF-8")
    self
  end
  attr_reader :s1
  attr_reader :s2

  def inspect
    (("s1 = " + s1) + ", s2 = ") + s2
  end
end
