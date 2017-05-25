# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class PositionAbs < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end
  def _read
    @index_offset = @_io.read_u4le
  end
  class IndexObj < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end
    def _read
      @entry = (@_io.read_bytes_term(0, false, true, true)).force_encoding("UTF-8")
    end
    attr_reader :entry
  end
  def index
    return @index unless @index.nil?
    _pos = @_io.pos
    @_io.seek(index_offset)
    @index = IndexObj.new(@_io, self, @_root)
    @_io.seek(_pos)
    @index
  end
  attr_reader :index_offset
end
