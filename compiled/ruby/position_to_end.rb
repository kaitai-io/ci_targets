# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class PositionToEnd < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
  end
  class IndexObj < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @foo = @_io.read_u4le
      @bar = @_io.read_u4le
    end
    attr_reader :foo
    attr_reader :bar
  end
  def index
    return @index unless @index.nil?
    _pos = @_io.pos
    @_io.seek((_io.size - 8))
    @index = IndexObj.new(@_io, self, @_root)
    @_io.seek(_pos)
    @index
  end
end
