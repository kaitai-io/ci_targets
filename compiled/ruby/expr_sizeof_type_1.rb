# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ExprSizeofType1 < Kaitai::Struct::Struct
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
      @d = Subblock.new(@_io, self, @_root)
      self
    end
    class Subblock < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @a = @_io.read_bytes(4)
        self
      end
      attr_reader :a
    end
    attr_reader :a
    attr_reader :b
    attr_reader :c
    attr_reader :d
  end
  def sizeof_block
    return @sizeof_block unless @sizeof_block.nil?
    @sizeof_block = 11
    @sizeof_block
  end
  def sizeof_subblock
    return @sizeof_subblock unless @sizeof_subblock.nil?
    @sizeof_subblock = 4
    @sizeof_subblock
  end
end
