# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprSizeofType0 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
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
  def sizeof_block
    return @sizeof_block unless @sizeof_block.nil?
    @sizeof_block = 7
    @sizeof_block
  end
end
