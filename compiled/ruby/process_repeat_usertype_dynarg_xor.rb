# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessRepeatUsertypeDynargXor < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @_raw_blocks = []
    @_raw__raw_blocks = []
    @blocks = []
    (2).times { |i|
      @_raw__raw_blocks << @_io.read_bytes(5)
      @_raw_blocks << Kaitai::Struct::Stream::process_xor_one(@_raw__raw_blocks[i], 155 ^ (i << 4 | _io.pos))
      _io__raw_blocks = Kaitai::Struct::Stream.new(@_raw_blocks[i])
      @blocks << Block.new(_io__raw_blocks, self, @_root)
    }
    @blocks_b = BlocksBWrapper.new(@_io, self, @_root)
    self
  end
  class Block < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @a = @_io.read_u4le
      self
    end
    attr_reader :a
  end
  class BlocksBWrapper < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @dummy = @_io.read_u1
      self
    end
    def blocks_0_b
      return @blocks_0_b unless @blocks_0_b.nil?
      io = _parent.blocks[0]._io
      _pos = io.pos
      io.seek(4)
      @blocks_0_b = io.read_u1
      io.seek(_pos)
      @blocks_0_b
    end
    def blocks_1_b
      return @blocks_1_b unless @blocks_1_b.nil?
      io = _parent.blocks[1]._io
      _pos = io.pos
      io.seek(4)
      @blocks_1_b = io.read_u1
      io.seek(_pos)
      @blocks_1_b
    end
    attr_reader :dummy
  end
  attr_reader :blocks
  attr_reader :blocks_b
  attr_reader :_raw_blocks
  attr_reader :_raw__raw_blocks
end
