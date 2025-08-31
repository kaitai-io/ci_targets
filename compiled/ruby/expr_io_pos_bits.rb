# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprIoPosBits < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @foo = @_io.read_bits_int_be(3)
    if _io.pos == 1
      @bar = @_io.read_bits_int_be(5)
    end
    if _io.pos == 1
      @baz = @_io.read_bits_int_be(1) != 0
    end
    if _io.pos == 2
      @qux = @_io.read_bits_int_be(7)
    end
    self
  end
  attr_reader :foo
  attr_reader :bar
  attr_reader :baz
  attr_reader :qux
end
