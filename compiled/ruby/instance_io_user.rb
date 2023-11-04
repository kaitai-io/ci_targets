# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class InstanceIoUser < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @qty_entries = @_io.read_u4le
    @entries = []
    (qty_entries).times { |i|
      @entries << Entry.new(@_io, self, @_root)
    }
    @_raw_strings = @_io.read_bytes_full
    _io__raw_strings = Kaitai::Struct::Stream.new(@_raw_strings)
    @strings = StringsObj.new(_io__raw_strings, self, @_root)
    self
  end
  class Entry < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @name_ofs = @_io.read_u4le
      @value = @_io.read_u4le
      self
    end
    def name
      return @name unless @name.nil?
      io = _root.strings._io
      _pos = io.pos
      io.seek(name_ofs)
      @name = (io.read_bytes_term(0, false, true, true)).force_encoding("UTF-8")
      io.seek(_pos)
      @name
    end
    attr_reader :name_ofs
    attr_reader :value
  end
  class StringsObj < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @str = []
      i = 0
      while not @_io.eof?
        @str << (@_io.read_bytes_term(0, false, true, true)).force_encoding("UTF-8")
        i += 1
      end
      self
    end
    attr_reader :str
  end
  attr_reader :qty_entries
  attr_reader :entries
  attr_reader :strings
  attr_reader :_raw_strings
end
