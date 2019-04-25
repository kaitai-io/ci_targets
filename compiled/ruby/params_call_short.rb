# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class ParamsCallShort < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @buf1 = MyStr1.new(@_io, self, @_root, 5)
    @buf2 = MyStr2.new(@_io, self, @_root, (2 + 3), true)
    self
  end
  class MyStr1 < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self, len)
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
  class MyStr2 < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self, len, has_trailer)
      super(_io, _parent, _root)
      @len = len
      @has_trailer = has_trailer
      _read
    end

    def _read
      @body = (@_io.read_bytes(len)).force_encoding("UTF-8")
      if has_trailer
        @trailer = @_io.read_u1
      end
      self
    end
    attr_reader :body
    attr_reader :trailer
    attr_reader :len
    attr_reader :has_trailer
  end
  attr_reader :buf1
  attr_reader :buf2
end
