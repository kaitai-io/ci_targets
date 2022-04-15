# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsPassArrayUsertype < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @blocks = []
    (2).times { |i|
      @blocks << Block.new(@_io, self, @_root)
    }
    @pass_blocks = ParamType.new(@_io, self, @_root, blocks)
    self
  end
  class Block < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @foo = @_io.read_u1
      self
    end
    attr_reader :foo
  end
  class ParamType < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self, bar)
      super(_io, _parent, _root)
      @bar = bar
      _read
    end

    def _read
      @one = @_io.read_bytes(bar[0].foo)
      @two = @_io.read_bytes(bar[1].foo)
      self
    end
    attr_reader :one
    attr_reader :two
    attr_reader :bar
  end
  attr_reader :blocks
  attr_reader :pass_blocks
end
