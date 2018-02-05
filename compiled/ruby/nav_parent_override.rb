# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NavParentOverride < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @child_size = @_io.read_u1
    @child_1 = Child.new(@_io, self, @_root)
    @mediator_2 = Mediator.new(@_io, self, @_root)
    self
  end
  class Mediator < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @child_2 = Child.new(@_io, _parent, @_root)
      self
    end
    attr_reader :child_2
  end
  class Child < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @data = @_io.read_bytes(_parent.child_size)
      self
    end
    attr_reader :data
  end
  attr_reader :child_size
  attr_reader :child_1
  attr_reader :mediator_2
end
