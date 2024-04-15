# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class PositionToEnd < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    self
  end
  class IndexObj < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @foo = @_io.read_u4le
      @bar = @_io.read_u4le
      self
    end
    attr_reader :foo
    attr_reader :bar
  end
  def index
    return @index unless @index.nil?
    _pos = @_io.pos
    @_io.seek(_io.size - 8)
    @index = IndexObj.new(@_io, self, @_root)
    @_io.seek(_pos)
    @index
  end
end
