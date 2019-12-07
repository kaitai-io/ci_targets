# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NavParentSwitchCast < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @foo = Foo.new(@_io, self, @_root)
    self
  end
  class Foo < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @buf_type = @_io.read_u1
      @flag = @_io.read_u1
      case buf_type
      when 0
        @_raw_buf = @_io.read_bytes(4)
        _io__raw_buf = Kaitai::Struct::Stream.new(@_raw_buf)
        @buf = Zero.new(_io__raw_buf, self, @_root)
      when 1
        @_raw_buf = @_io.read_bytes(4)
        _io__raw_buf = Kaitai::Struct::Stream.new(@_raw_buf)
        @buf = One.new(_io__raw_buf, self, @_root)
      else
        @buf = @_io.read_bytes(4)
      end
      self
    end
    class Zero < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @bar = Bar.new(@_io, self, @_root)
        self
      end
      attr_reader :bar
    end
    class One < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @bar = Bar.new(@_io, self, @_root)
        self
      end
      attr_reader :bar
    end
    class Bar < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        self
      end
      def flag
        return @flag unless @flag.nil?
        @flag = _parent._parent.flag
        @flag
      end
    end
    attr_reader :buf_type
    attr_reader :flag
    attr_reader :buf
    attr_reader :_raw_buf
  end
  attr_reader :foo
end
