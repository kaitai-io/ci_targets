# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class StrEncodingsUtf16 < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @len_be = @_io.read_u4le
    _io_be_bom_removed = @_io.substream(len_be)
    @be_bom_removed = StrBeBomRemoved.new(_io_be_bom_removed, self, @_root)
    @len_le = @_io.read_u4le
    _io_le_bom_removed = @_io.substream(len_le)
    @le_bom_removed = StrLeBomRemoved.new(_io_le_bom_removed, self, @_root)
    self
  end
  class StrBeBomRemoved < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @bom = @_io.read_u2be
      @str = (@_io.read_bytes_full).force_encoding("UTF-16BE").encode('UTF-8')
      self
    end
    attr_reader :bom
    attr_reader :str
  end
  class StrLeBomRemoved < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @bom = @_io.read_u2le
      @str = (@_io.read_bytes_full).force_encoding("UTF-16LE").encode('UTF-8')
      self
    end
    attr_reader :bom
    attr_reader :str
  end
  attr_reader :len_be
  attr_reader :be_bom_removed
  attr_reader :len_le
  attr_reader :le_bom_removed
  attr_reader :_raw_be_bom_removed
  attr_reader :_raw_le_bom_removed
end
