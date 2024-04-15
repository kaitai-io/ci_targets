# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class CastNested < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
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
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @code = @_io.read_u1
      case code
      when 73
        @body = Intval.new(@_io, self, @_root)
      when 83
        @body = Strval.new(@_io, self, @_root)
      end
      self
    end
    class Intval < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = nil)
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
      def initialize(_io, _parent = nil, _root = nil)
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
  def opcodes_0_str
    return @opcodes_0_str unless @opcodes_0_str.nil?
    @opcodes_0_str = opcodes[0].body
    @opcodes_0_str
  end
  def opcodes_0_str_value
    return @opcodes_0_str_value unless @opcodes_0_str_value.nil?
    @opcodes_0_str_value = opcodes[0].body.value
    @opcodes_0_str_value
  end
  def opcodes_1_int
    return @opcodes_1_int unless @opcodes_1_int.nil?
    @opcodes_1_int = opcodes[1].body
    @opcodes_1_int
  end
  def opcodes_1_int_value
    return @opcodes_1_int_value unless @opcodes_1_int_value.nil?
    @opcodes_1_int_value = opcodes[1].body.value
    @opcodes_1_int_value
  end
  attr_reader :opcodes
end
