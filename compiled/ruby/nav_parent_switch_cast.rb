# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NavParentSwitchCast < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @main = Foo.new(@_io, self, @_root)
    self
  end
  class Foo < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @buf_type = @_io.read_u1
      @flag = @_io.read_u1
      case buf_type
      when 0
        _io_buf = @_io.substream(4)
        @buf = Zero.new(_io_buf, self, @_root)
      when 1
        _io_buf = @_io.substream(4)
        @buf = One.new(_io_buf, self, @_root)
      else
        @buf = @_io.read_bytes(4)
      end
      self
    end
    class Common < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = nil)
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
    class One < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = nil)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @branch = Common.new(@_io, self, @_root)
        self
      end
      attr_reader :branch
    end
    class Zero < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = nil)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @branch = Common.new(@_io, self, @_root)
        self
      end
      attr_reader :branch
    end
    attr_reader :buf_type
    attr_reader :flag
    attr_reader :buf
    attr_reader :_raw_buf
  end
  attr_reader :main
end
