# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class IndexSizes < Kaitai::Struct::Struct
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
    @bufs = Array.new(qty)
    (qty).times { |i|
      @bufs[i] = (@_io.read_bytes(sizes[i])).force_encoding("ASCII")
    }
    self
  end
  attr_reader :qty
  attr_reader :sizes
  attr_reader :bufs
end
