# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NavParentFalse < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @child_size = @_io.read_u1
    @element_a = ParentA.new(@_io, self, @_root)
    @element_b = ParentB.new(@_io, self, @_root)
    self
  end
  class ParentA < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @foo = Child.new(@_io, self, @_root)
      @bar = ParentB.new(@_io, self, @_root)
      self
    end
    attr_reader :foo
    attr_reader :bar
  end
  class ParentB < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @foo = Child.new(@_io, nil, @_root)
      self
    end
    attr_reader :foo
  end
  class Child < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @code = @_io.read_u1
      if code == 73
        @more = @_io.read_bytes(_parent._parent.child_size)
      end
      self
    end
    attr_reader :code
    attr_reader :more
  end
  attr_reader :child_size
  attr_reader :element_a
  attr_reader :element_b
end
