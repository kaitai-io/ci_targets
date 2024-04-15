# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class IfValues < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @codes = []
    (3).times { |i|
      @codes << Code.new(@_io, self, @_root)
    }
    self
  end
  class Code < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @opcode = @_io.read_u1
      self
    end
    def half_opcode
      return @half_opcode unless @half_opcode.nil?
      if opcode % 2 == 0
        @half_opcode = opcode / 2
      end
      @half_opcode
    end
    attr_reader :opcode
  end
  attr_reader :codes
end
