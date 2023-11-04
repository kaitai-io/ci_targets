# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NestedTypes2 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @one = SubtypeA.new(@_io, self, @_root)
    @two = SubtypeB.new(@_io, self, @_root)
    self
  end
  class SubtypeA < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @typed_at_root = SubtypeB.new(@_io, self, @_root)
      @typed_here1 = SubtypeC.new(@_io, self, @_root)
      @typed_here2 = SubtypeCc.new(@_io, self, @_root)
      self
    end
    class SubtypeC < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @value_c = @_io.read_s1
        @typed_here = SubtypeD.new(@_io, self, @_root)
        @typed_parent = SubtypeCc.new(@_io, self, @_root)
        @typed_root = SubtypeB.new(@_io, self, @_root)
        self
      end
      class SubtypeD < Kaitai::Struct::Struct
        def initialize(_io, _parent = nil, _root = self)
          super(_io, _parent, _root)
          _read
        end

        def _read
          @value_d = @_io.read_s1
          self
        end
        attr_reader :value_d
      end
      attr_reader :value_c
      attr_reader :typed_here
      attr_reader :typed_parent
      attr_reader :typed_root
    end
    class SubtypeCc < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
        @value_cc = @_io.read_s1
        self
      end
      attr_reader :value_cc
    end
    attr_reader :typed_at_root
    attr_reader :typed_here1
    attr_reader :typed_here2
  end
  class SubtypeB < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
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
