# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NavParentSwitch < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @category = @_io.read_u1
    case category
    when 1
      @content = Element1.new(@_io, self, @_root)
    end
    self
  end
  class Element1 < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @foo = @_io.read_u1
      @subelement = Subelement1.new(@_io, self, @_root)
      self
    end
    attr_reader :foo
    attr_reader :subelement
  end
  class Subelement1 < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      if _parent.foo == 66
        @bar = @_io.read_u1
      end
      self
    end
    attr_reader :bar
  end
  attr_reader :category
  attr_reader :content
end
