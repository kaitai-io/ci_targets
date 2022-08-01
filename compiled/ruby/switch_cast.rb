# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchCast < Kaitai::Struct::Struct
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
    def initialize(_io, _parent = nil, _root = self)
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
    attr_reader :code
    attr_reader :body
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
  def first_obj
    return @first_obj unless @first_obj.nil?
    @first_obj = opcodes[0].body
    @first_obj
  end
  def second_val
    return @second_val unless @second_val.nil?
    @second_val = opcodes[1].body.value
    @second_val
  end
  def err_cast
    return @err_cast unless @err_cast.nil?
    @err_cast = opcodes[2].body
    @err_cast
  end
  attr_reader :opcodes
end
