# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'
require 'zlib'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchManualIntElse < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @opcodes = []
    while not @_io.eof?
      @opcodes << Opcode.new(@_io, self, @_root)
    end
  end
  class Opcode < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @code = @_io.read_u1
      case code
      when 73
        @body = Intval.new(@_io, self, @_root)
      when 83
        @body = Strval.new(@_io, self, @_root)
      else
        @body = Noneval.new(@_io, self, @_root)
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
    class Noneval < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        @filler = @_io.read_u4le
      end
      attr_reader :filler
    end
    attr_reader :code
    attr_reader :body
  end
  attr_reader :opcodes
end
