# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class IndexToParamExpr < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @qty = @_io.read_u4le
    @sizes = Array.new(qty)
    (qty).times { |i|
      @sizes[i] = @_io.read_u4le
    }
    @blocks = Array.new(qty)
    (qty).times { |i|
      @blocks[i] = Block.new(@_io, self, @_root, i)
    }
    self
  end
  class Block < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self, idx)
      super(_io, _parent, _root)
      @idx = idx
      _read
    end

    def _read
      @buf = (@_io.read_bytes(_root.sizes[idx])).force_encoding("ASCII")
      self
    end
    attr_reader :buf
    attr_reader :idx
  end
  attr_reader :qty
  attr_reader :sizes
  attr_reader :blocks
end
