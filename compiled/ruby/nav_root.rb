# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.7')
  raise "Incompatible Kaitai Struct Ruby API: 0.7 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class NavRoot < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end
  def _read
    @header = HeaderObj.new(@_io, self, @_root)
    @index = IndexObj.new(@_io, self, @_root)
  end
  class HeaderObj < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end
    def _read
      @qty_entries = @_io.read_u4le
      @filename_len = @_io.read_u4le
    end
    attr_reader :qty_entries
    attr_reader :filename_len
  end
  class IndexObj < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end
    def _read
      @magic = @_io.read_bytes(4)
      @entries = Array.new(_root.header.qty_entries)
      (_root.header.qty_entries).times { |i|
        @entries[i] = Entry.new(@_io, self, @_root)
      }
    end
    attr_reader :magic
    attr_reader :entries
  end
  class Entry < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end
    def _read
      @filename = (@_io.read_bytes(_root.header.filename_len)).force_encoding("UTF-8")
    end
    attr_reader :filename
  end
  attr_reader :header
  attr_reader :index
end
