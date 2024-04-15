# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NestedTypes < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @one = SubtypeA.new(@_io, self, @_root)
    @two = SubtypeB.new(@_io, self, @_root)
    self
  end
  class SubtypeA < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @typed_at_root = SubtypeB.new(@_io, self, @_root)
      @typed_here = SubtypeC.new(@_io, self, @_root)
      self
    end
    class SubtypeC < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = nil)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @value_c = @_io.read_s1
        self
      end
      attr_reader :value_c
    end
    attr_reader :typed_at_root
    attr_reader :typed_here
  end
  class SubtypeB < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value_b = @_io.read_s1
      self
    end
    attr_reader :value_b
  end
  attr_reader :one
  attr_reader :two
end
