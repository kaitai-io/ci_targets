# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ProcessRepeatUsertype < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @_raw_blocks = Array.new(2)
    @blocks = Array.new(2)
    (2).times { |i|
      @_raw__raw_blocks[i] = @_io.read_bytes(5)
      @_raw_blocks = Kaitai::Struct::Stream::process_xor_one(@_raw__raw_blocks, 158)
      _io__raw_blocks = Kaitai::Struct::Stream.new(@_raw_blocks[i])
      @blocks[i] = Block.new(_io__raw_blocks, self, @_root)
    }
    self
  end
  class Block < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @a = @_io.read_s4le
      @b = @_io.read_s1
      self
    end
    attr_reader :a
    attr_reader :b
  end
  attr_reader :blocks
  attr_reader :_raw_blocks
  attr_reader :_raw__raw_blocks
end
