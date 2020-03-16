# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchElseOnly < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @opcode = @_io.read_s1
    case opcode
    else
      @prim_byte = @_io.read_s1
    end
    case opcode
    else
      @struct = Data.new(@_io, self, @_root)
    end
    case opcode
    else
      @_raw_struct_sized = @_io.read_bytes(4)
      _io__raw_struct_sized = Kaitai::Struct::Stream.new(@_raw_struct_sized)
      @struct_sized = Data.new(_io__raw_struct_sized, self, @_root)
    end
    self
  end
  class Data < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = @_io.read_bytes(4)
      self
    end
    attr_reader :value
  end
  attr_reader :opcode
  attr_reader :prim_byte
  attr_reader :struct
  attr_reader :struct_sized
  attr_reader :_raw_struct_sized
end
