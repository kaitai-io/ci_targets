# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NestedSameName < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @main_data = Main.new(@_io, self, @_root)
    @dummy = DummyObj.new(@_io, self, @_root)
    self
  end
  class DummyObj < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
    class Foo < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        self
      end
    end
  end
  class Main < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @main_size = @_io.read_s4le
      @foo = FooObj.new(@_io, self, @_root)
      self
    end
    class FooObj < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @data = @_io.read_bytes((_parent.main_size * 2))
        self
      end
      attr_reader :data
    end
    attr_reader :main_size
    attr_reader :foo
  end
  attr_reader :main_data
  attr_reader :dummy
end
