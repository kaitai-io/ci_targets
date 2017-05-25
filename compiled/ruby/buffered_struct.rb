# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class BufferedStruct < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end
  def _read
    @len1 = @_io.read_u4le
    @_raw_block1 = @_io.read_bytes(len1)
    io = Kaitai::Struct::Stream.new(@_raw_block1)
    @block1 = Block.new(io, self, @_root)
    @len2 = @_io.read_u4le
    @_raw_block2 = @_io.read_bytes(len2)
    io = Kaitai::Struct::Stream.new(@_raw_block2)
    @block2 = Block.new(io, self, @_root)
    @finisher = @_io.read_u4le
  end
  class Block < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end
    def _read
      @number1 = @_io.read_u4le
      @number2 = @_io.read_u4le
    end
    attr_reader :number1
    attr_reader :number2
  end
  attr_reader :len1
  attr_reader :block1
  attr_reader :len2
  attr_reader :block2
  attr_reader :finisher
  attr_reader :_raw_block1
  attr_reader :_raw_block2
end
