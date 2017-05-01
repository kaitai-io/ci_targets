# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RecursiveOne < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @one = @_io.read_u1
    case (one & 3)
    when 0
      @next = RecursiveOne.new(@_io)
    when 1
      @next = RecursiveOne.new(@_io)
    when 2
      @next = RecursiveOne.new(@_io)
    when 3
      @next = Fini.new(@_io, self, @_root)
    end
  end
  class Fini < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @finisher = @_io.read_u2le
    end
    attr_reader :finisher
  end
  attr_reader :one
  attr_reader :next
end
