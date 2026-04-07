# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class BitsByteAligned < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @one = @_io.read_bits_int_be(6)
    @byte_1 = @_io.read_u1
    @two = @_io.read_bits_int_be(3)
    @three = (@_io.read_bits_int_be(1) != 0)
    @byte_2 = @_io.read_bytes(1)
    @four = @_io.read_bits_int_be(14)
    _io_byte_3 = @_io.substream(3)
    @byte_3 = Foo.new(_io_byte_3, self, @_root)
    @full_byte = @_io.read_bits_int_be(8)
    @byte_4 = @_io.read_u1
    @five = @_io.read_bits_int_be(22)
    @bytes_term = @_io.read_bytes_term(69, true, true, true)
    @six = @_io.read_bits_int_be(8)
    self
  end
  class Foo < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @inner = @_io.read_bits_int_be(19)
      self
    end
    attr_reader :inner
  end
  attr_reader :one
  attr_reader :byte_1
  attr_reader :two
  attr_reader :three
  attr_reader :byte_2
  attr_reader :four
  attr_reader :byte_3
  attr_reader :full_byte
  attr_reader :byte_4
  attr_reader :five
  attr_reader :bytes_term
  attr_reader :six
  attr_reader :_raw_byte_3
end
