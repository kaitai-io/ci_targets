# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class DefaultEndianMod < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @main = MainObj.new(@_io, self, @_root)
    self
  end
  class MainObj < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @one = @_io.read_s4le
      @nest = Subnest.new(@_io, self, @_root)
      @nest_be = SubnestBe.new(@_io, self, @_root)
      self
    end
    class Subnest < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = nil)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @two = @_io.read_s4le
        self
      end
      attr_reader :two
    end
    class SubnestBe < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = nil)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @two = @_io.read_s4be
        self
      end
      attr_reader :two
    end
    attr_reader :one
    attr_reader :nest
    attr_reader :nest_be
  end
  attr_reader :main
end
