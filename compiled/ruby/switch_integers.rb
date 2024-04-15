# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchIntegers < Kaitai::Struct::Struct
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
      when 1
        @body = @_io.read_u1
      when 2
        @body = @_io.read_u2le
      when 4
        @body = @_io.read_u4le
      when 8
        @body = @_io.read_u8le
      end
      self
    end
    attr_reader :code
    attr_reader :body
  end
  attr_reader :opcodes
end
