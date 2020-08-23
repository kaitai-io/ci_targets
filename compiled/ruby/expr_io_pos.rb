# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprIoPos < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @_raw_substream1 = @_io.read_bytes(16)
    _io__raw_substream1 = Kaitai::Struct::Stream.new(@_raw_substream1)
    @substream1 = AllPlusNumber.new(_io__raw_substream1, self, @_root)
    @_raw_substream2 = @_io.read_bytes(14)
    _io__raw_substream2 = Kaitai::Struct::Stream.new(@_raw_substream2)
    @substream2 = AllPlusNumber.new(_io__raw_substream2, self, @_root)
    self
  end
  class AllPlusNumber < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @my_str = (@_io.read_bytes_term(0, false, true, true)).force_encoding("UTF-8")
      @body = @_io.read_bytes(((_io.size - _io.pos) - 2))
      @number = @_io.read_u2le
      self
    end
    attr_reader :my_str
    attr_reader :body
    attr_reader :number
  end
  attr_reader :substream1
  attr_reader :substream2
  attr_reader :_raw_substream1
  attr_reader :_raw_substream2
end
