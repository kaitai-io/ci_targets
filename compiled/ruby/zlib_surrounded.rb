# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'
require 'zlib'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ZlibSurrounded < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @pre = @_io.read_bytes(4)
    @_raw__raw_zlib = @_io.read_bytes(12)
    @_raw_zlib = Zlib::Inflate.inflate(@_raw__raw_zlib)
    _io__raw_zlib = Kaitai::Struct::Stream.new(@_raw_zlib)
    @zlib = Inflated.new(_io__raw_zlib, self, @_root)
    @post = @_io.read_bytes(4)
    self
  end
  class Inflated < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @inflated = @_io.read_s4le
      self
    end
    attr_reader :inflated
  end
  attr_reader :pre
  attr_reader :zlib
  attr_reader :post
  attr_reader :_raw_zlib
  attr_reader :_raw__raw_zlib
end
