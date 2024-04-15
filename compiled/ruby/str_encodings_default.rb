# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class StrEncodingsDefault < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @len_of_1 = @_io.read_u2le
    @str1 = (@_io.read_bytes(len_of_1)).force_encoding("UTF-8")
    @rest = Subtype.new(@_io, self, @_root)
    self
  end
  class Subtype < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @len_of_2 = @_io.read_u2le
      @str2 = (@_io.read_bytes(len_of_2)).force_encoding("UTF-8")
      @len_of_3 = @_io.read_u2le
      @str3 = (@_io.read_bytes(len_of_3)).force_encoding("SJIS").encode('UTF-8')
      @len_of_4 = @_io.read_u2le
      @str4 = (@_io.read_bytes(len_of_4)).force_encoding("IBM437").encode('UTF-8')
      self
    end
    attr_reader :len_of_2
    attr_reader :str2
    attr_reader :len_of_3
    attr_reader :str3
    attr_reader :len_of_4
    attr_reader :str4
  end
  attr_reader :len_of_1
  attr_reader :str1
  attr_reader :rest
end
