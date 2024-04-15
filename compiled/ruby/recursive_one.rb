# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RecursiveOne < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @one = @_io.read_u1
    case one & 3
    when 0
      @next = RecursiveOne.new(@_io, self, @_root)
    when 1
      @next = RecursiveOne.new(@_io, self, @_root)
    when 2
      @next = RecursiveOne.new(@_io, self, @_root)
    when 3
      @next = Fini.new(@_io, self, @_root)
    end
    self
  end
  class Fini < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @finisher = @_io.read_u2le
      self
    end
    attr_reader :finisher
  end
  attr_reader :one
  attr_reader :next
end
