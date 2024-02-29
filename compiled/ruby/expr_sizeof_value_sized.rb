# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprSizeofValueSized < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    _io_block1 = @_io.substream(12)
    @block1 = Block.new(_io_block1, self, @_root)
    @more = @_io.read_u2le
    self
  end
  class Block < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @a = @_io.read_u1
      @b = @_io.read_u4le
      @c = @_io.read_bytes(2)
      self
    end
    attr_reader :a
    attr_reader :b
    attr_reader :c
  end
  def sizeof_block_c
    return @sizeof_block_c unless @sizeof_block_c.nil?
    @sizeof_block_c = 2
    @sizeof_block_c
  end
  def self_sizeof
    return @self_sizeof unless @self_sizeof.nil?
    @self_sizeof = 14
    @self_sizeof
  end
  def sizeof_block_a
    return @sizeof_block_a unless @sizeof_block_a.nil?
    @sizeof_block_a = 1
    @sizeof_block_a
  end
  def sizeof_block_b
    return @sizeof_block_b unless @sizeof_block_b.nil?
    @sizeof_block_b = 4
    @sizeof_block_b
  end
  def sizeof_block
    return @sizeof_block unless @sizeof_block.nil?
    @sizeof_block = 12
    @sizeof_block
  end
  attr_reader :block1
  attr_reader :more
  attr_reader :_raw_block1
end
