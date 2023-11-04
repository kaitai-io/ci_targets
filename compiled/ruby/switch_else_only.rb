# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchElseOnly < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @opcode = @_io.read_s1
    @prim_byte = @_io.read_s1
    @indicator = @_io.read_bytes(4)
    @ut = Data.new(@_io, self, @_root)
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
  attr_reader :indicator
  attr_reader :ut
end
