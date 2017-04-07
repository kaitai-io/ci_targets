# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'
require 'zlib'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EnumIf < Kaitai::Struct::Struct

  OPCODES = {
    83 => :opcodes_a_string,
    84 => :opcodes_a_tuple,
  }
  I__OPCODES = OPCODES.invert
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @op1 = Operation.new(@_io, self, @_root)
    @op2 = Operation.new(@_io, self, @_root)
    @op3 = Operation.new(@_io, self, @_root)
  end
  class Operation < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @opcode = Kaitai::Struct::Stream::resolve_enum(OPCODES, @_io.read_u1)
      if opcode == :opcodes_a_tuple
        @arg_tuple = ArgTuple.new(@_io, self, @_root)
      end
      if opcode == :opcodes_a_string
        @arg_str = ArgStr.new(@_io, self, @_root)
      end
    end
    attr_reader :opcode
    attr_reader :arg_tuple
    attr_reader :arg_str
  end
  class ArgTuple < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @num1 = @_io.read_u1
      @num2 = @_io.read_u1
    end
    attr_reader :num1
    attr_reader :num2
  end
  class ArgStr < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @len = @_io.read_u1
      @str = (@_io.read_bytes(len)).force_encoding("UTF-8")
    end
    attr_reader :len
    attr_reader :str
  end
  attr_reader :op1
  attr_reader :op2
  attr_reader :op3
end
