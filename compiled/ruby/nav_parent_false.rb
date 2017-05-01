# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NavParentFalse < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    @child_size = @_io.read_u1
    @element_a = ParentA.new(@_io, self, @_root)
    @element_b = ParentB.new(@_io, self, @_root)
  end
  class ParentA < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @foo = Child.new(@_io, self, @_root)
      @bar = ParentB.new(@_io, self, @_root)
    end
    attr_reader :foo
    attr_reader :bar
  end
  class ParentB < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @foo = Child.new(@_io, false, @_root)
    end
    attr_reader :foo
  end
  class Child < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      @code = @_io.read_u1
      if code == 73
        @more = @_io.read_bytes(_parent._parent.child_size)
      end
    end
    attr_reader :code
    attr_reader :more
  end
  attr_reader :child_size
  attr_reader :element_a
  attr_reader :element_b
end
