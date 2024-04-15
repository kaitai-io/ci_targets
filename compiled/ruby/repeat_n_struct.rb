# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatNStruct < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @qty = @_io.read_u4le
    @chunks = []
    (qty).times { |i|
      @chunks << Chunk.new(@_io, self, @_root)
    }
    self
  end
  class Chunk < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @offset = @_io.read_u4le
      @len = @_io.read_u4le
      self
    end
    attr_reader :offset
    attr_reader :len
  end
  attr_reader :qty
  attr_reader :chunks
end
