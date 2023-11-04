# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsPassArrayStruct < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @one = Foo.new(@_io, self, @_root)
    @two = Bar.new(@_io, self, @_root)
    @pass_structs = StructType.new(@_io, self, @_root, one_two)
    self
  end
  class Foo < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @f = @_io.read_u1
      self
    end
    attr_reader :f
  end
  class Bar < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @b = @_io.read_u1
      self
    end
    attr_reader :b
  end
  class StructType < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self, structs)
      super(_io, _parent, _root)
      @structs = structs
      _read
    end

    def _read
      self
    end
    attr_reader :structs
  end
  def one_two
    return @one_two unless @one_two.nil?
    @one_two = [one, two]
    @one_two
  end
  attr_reader :one
  attr_reader :two
  attr_reader :pass_structs
end
