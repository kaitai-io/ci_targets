# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NestedTypes3 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @a_cc = SubtypeA::SubtypeCc.new(@_io, self, @_root)
    @a_c_d = SubtypeA::SubtypeC::SubtypeD.new(@_io, self, @_root)
    @b = SubtypeB.new(@_io, self, @_root)
    self
  end
  class SubtypeA < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
    class SubtypeC < Kaitai::Struct::Struct
      def initialize(_io, _parent = nil, _root = self)
        super(_io, _parent, _root)
        _read
      end

      def _read
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
  end
  class SubtypeB < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value_b = @_io.read_s1
      @a_cc = SubtypeA::SubtypeCc.new(@_io, self, @_root)
      @a_c_d = SubtypeA::SubtypeC::SubtypeD.new(@_io, self, @_root)
      self
    end
    attr_reader :value_b
    attr_reader :a_cc
    attr_reader :a_c_d
  end
  attr_reader :a_cc
  attr_reader :a_c_d
  attr_reader :b
end
