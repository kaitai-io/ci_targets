# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsCallExtraParens < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @buf1 = MyStr1.new(@_io, self, @_root, 5)
    self
  end
  class MyStr1 < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil, len)
      super(_io, _parent, _root)
      @len = len
      _read
    end

    def _read
      @body = (@_io.read_bytes(len)).force_encoding("UTF-8")
      self
    end
    attr_reader :body
    attr_reader :len
  end
  attr_reader :buf1
end
