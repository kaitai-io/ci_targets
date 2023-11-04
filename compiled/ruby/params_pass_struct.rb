# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsPassStruct < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @first = Block.new(@_io, self, @_root)
    @one = StructType.new(@_io, self, @_root, first)
    self
  end
  class Block < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @foo = @_io.read_u1
      self
    end
    attr_reader :foo
  end
  class StructType < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self, foo)
      super(_io, _parent, _root)
      @foo = foo
      _read
    end

    def _read
      @bar = Baz.new(@_io, self, @_root, foo)
      self
    end
    class Baz < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self, foo)
        super(_io, _parent, _root)
        @foo = foo
        _read
      end

      def _read
        @qux = @_io.read_u1
        self
      end
      attr_reader :qux
      attr_reader :foo
    end
    attr_reader :bar
    attr_reader :foo
  end
  attr_reader :first
  attr_reader :one
end
