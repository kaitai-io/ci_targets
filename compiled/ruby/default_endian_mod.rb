# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'
require 'zlib'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class DefaultEndianMod < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @main = MainObj.new(@_io, self, @_root)
  end
  class MainObj < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @one = @_io.read_s4le
      @nest = Subnest.new(@_io, self, @_root)
      @nest_be = SubnestBe.new(@_io, self, @_root)
    end
    class Subnest < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        @two = @_io.read_s4le
      end
      attr_reader :two
    end
    class SubnestBe < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        @two = @_io.read_s4be
      end
      attr_reader :two
    end
    attr_reader :one
    attr_reader :nest
    attr_reader :nest_be
  end
  attr_reader :main
end
