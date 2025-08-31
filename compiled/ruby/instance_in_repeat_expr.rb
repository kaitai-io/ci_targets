# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class InstanceInRepeatExpr < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @chunks = []
    (num_chunks).times { |i|
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
  def num_chunks
    return @num_chunks unless @num_chunks.nil?
    _pos = @_io.pos
    @_io.seek(_io.pos + 16)
    @num_chunks = @_io.read_u4le
    @_io.seek(_pos)
    @num_chunks
  end
  attr_reader :chunks
end
