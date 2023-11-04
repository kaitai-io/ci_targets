# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprIoEof < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    _io_substream1 = @_io.substream(4)
    @substream1 = OneOrTwo.new(_io_substream1, self, @_root)
    _io_substream2 = @_io.substream(8)
    @substream2 = OneOrTwo.new(_io_substream2, self, @_root)
    self
  end
  class OneOrTwo < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @one = @_io.read_u4le
      if !(_io.eof?)
        @two = @_io.read_u4le
      end
      self
    end
    def reflect_eof
      return @reflect_eof unless @reflect_eof.nil?
      @reflect_eof = _io.eof?
      @reflect_eof
    end
    attr_reader :one
    attr_reader :two
  end
  attr_reader :substream1
  attr_reader :substream2
  attr_reader :_raw_substream1
  attr_reader :_raw_substream2
end
