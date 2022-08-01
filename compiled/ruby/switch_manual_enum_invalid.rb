# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchManualEnumInvalid < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @opcodes = []
    i = 0
    while not @_io.eof?
      @opcodes << Opcode.new(@_io, self, @_root)
      i += 1
    end
    self
  end
  class Opcode < Kaitai::Struct::Struct

    CODE_ENUM = {
      73 => :code_enum_intval,
      83 => :code_enum_strval,
    }
    I__CODE_ENUM = CODE_ENUM.invert
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @code = Kaitai::Struct::Stream::resolve_enum(CODE_ENUM, @_io.read_u1)
      case code
      when :code_enum_intval
        @body = Intval.new(@_io, self, @_root)
      when :code_enum_strval
        @body = Strval.new(@_io, self, @_root)
      end
      self
    end
    class Intval < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @value = @_io.read_u1
        self
      end
      attr_reader :value
    end
    class Strval < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @value = (@_io.read_bytes_term(0, false, true, true)).force_encoding("ASCII").encode('UTF-8')
        self
      end
      attr_reader :value
    end
    attr_reader :code
    attr_reader :body
  end
  attr_reader :opcodes
end
