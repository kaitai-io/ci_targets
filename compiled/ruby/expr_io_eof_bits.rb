# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprIoEofBits < Kaitai::Struct::Struct
  attr_reader :_debug
  SEQ_FIELDS = ["foo", "bar", "baz", "align", "qux"]
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    @_debug = {}
  end

  def _read
    (@_debug['foo'] ||= {})[:start] = @_io.pos
    @foo = @_io.read_bits_int_be(20)
    (@_debug['foo'] ||= {})[:end] = @_io.pos
    if !(_io.eof?)
      (@_debug['bar'] ||= {})[:start] = @_io.pos
      @bar = @_io.read_bits_int_be(4)
      (@_debug['bar'] ||= {})[:end] = @_io.pos
    end
    if !(_io.eof?)
      (@_debug['baz'] ||= {})[:start] = @_io.pos
      @baz = @_io.read_bits_int_be(16)
      (@_debug['baz'] ||= {})[:end] = @_io.pos
    end
    @_io.align_to_byte
    (@_debug['align'] ||= {})[:start] = @_io.pos
    @align = @_io.read_bytes(0)
    (@_debug['align'] ||= {})[:end] = @_io.pos
    if !(_io.eof?)
      (@_debug['qux'] ||= {})[:start] = @_io.pos
      @qux = @_io.read_bits_int_be(16)
      (@_debug['qux'] ||= {})[:end] = @_io.pos
    end
    self
  end
  attr_reader :foo
  attr_reader :bar
  attr_reader :baz
  attr_reader :align
  attr_reader :qux
end
