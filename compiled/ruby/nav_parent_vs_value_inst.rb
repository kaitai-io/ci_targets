# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NavParentVsValueInst < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @s1 = (@_io.read_bytes_term(124, false, true, true)).force_encoding("UTF-8")
    @child = ChildObj.new(@_io, self, @_root)
    self
  end
  class ChildObj < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
    def do_something
      return @do_something unless @do_something.nil?
      @do_something = (_parent.s1 == "foo" ? true : false)
      @do_something
    end
  end
  attr_reader :s1
  attr_reader :child
end
