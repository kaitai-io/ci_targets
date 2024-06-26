# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class IndexSizes < Kaitai::Struct::Struct
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
    @bufs = []
    (qty).times { |i|
      @bufs << (@_io.read_bytes(sizes[i])).force_encoding("ASCII").encode('UTF-8')
    }
    self
  end
  attr_reader :qty
  attr_reader :sizes
  attr_reader :bufs
end
