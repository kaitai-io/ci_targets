# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'
require 'zlib'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchManualEnum < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @opcodes = []
    while not @_io.eof?
      @opcodes << Opcode.new(@_io, self, @_root)
    end
  end
  class Opcode < Kaitai::Struct::Struct

    CODE_ENUM = {
      73 => :code_enum_intval,
      83 => :code_enum_strval,
    }
    I__CODE_ENUM = CODE_ENUM.invert
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @code = Kaitai::Struct::Stream::resolve_enum(CODE_ENUM, @_io.read_u1)
      case code
      when :code_enum_intval
        @body = Intval.new(@_io, self, @_root)
      when :code_enum_strval
        @body = Strval.new(@_io, self, @_root)
      end
    end
    class Intval < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        @value = @_io.read_u1
      end
      attr_reader :value
    end
    class Strval < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        @value = (@_io.read_bytes_term(0, false, true, true)).force_encoding("ASCII")
      end
      attr_reader :value
    end
    attr_reader :code
    attr_reader :body
  end
  attr_reader :opcodes
end
