# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class IndexToParamUntil < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @qty = @_io.read_u4le
    @sizes = []
    (qty).times { |i|
      @sizes << @_io.read_u4le
    }
    @blocks = []
    i = 0
    begin
      _ = Block.new(@_io, self, @_root, i)
      @blocks << _
      i += 1
    end until _io.eof?
    self
  end
  class Block < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil, idx)
      super(_io, _parent, _root)
      @idx = idx
      _read
    end

    def _read
      @buf = (@_io.read_bytes(_root.sizes[idx])).force_encoding("ASCII").encode('UTF-8')
      self
    end
    attr_reader :buf
    attr_reader :idx
  end
  attr_reader :qty
  attr_reader :sizes
  attr_reader :blocks
end
