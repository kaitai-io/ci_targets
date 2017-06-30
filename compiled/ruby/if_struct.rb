# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class IfStruct < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @op1 = Operation.new(@_io, self, @_root)
    @op2 = Operation.new(@_io, self, @_root)
    @op3 = Operation.new(@_io, self, @_root)
    self
  end
  class Operation < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @opcode = @_io.read_u1
      if opcode == 84
        @arg_tuple = ArgTuple.new(@_io, self, @_root)
      end
      if opcode == 83
        @arg_str = ArgStr.new(@_io, self, @_root)
      end
      self
    end
    attr_reader :opcode
    attr_reader :arg_tuple
    attr_reader :arg_str
  end
  class ArgTuple < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @num1 = @_io.read_u1
      @num2 = @_io.read_u1
      self
    end
    attr_reader :num1
    attr_reader :num2
  end
  class ArgStr < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @len = @_io.read_u1
      @str = (@_io.read_bytes(len)).force_encoding("UTF-8")
      self
    end
    attr_reader :len
    attr_reader :str
  end
  attr_reader :op1
  attr_reader :op2
  attr_reader :op3
end
