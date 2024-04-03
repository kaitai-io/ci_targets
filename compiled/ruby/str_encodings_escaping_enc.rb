# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class StrEncodingsEscapingEnc < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @len_of_1 = @_io.read_u2le
    _io_str1 = @_io.substream(len_of_1)
    @str1 = Str1Wrapper.new(_io_str1, self, @_root)
    @len_of_2 = @_io.read_u2le
    _io_str2 = @_io.substream(len_of_2)
    @str2 = Str2Wrapper.new(_io_str2, self, @_root)
    @len_of_3 = @_io.read_u2le
    _io_str3 = @_io.substream(len_of_3)
    @str3 = Str3Wrapper.new(_io_str3, self, @_root)
    @len_of_4 = @_io.read_u2le
    _io_str4 = @_io.substream(len_of_4)
    @str4 = Str4Wrapper.new(_io_str4, self, @_root)
    self
  end
  class Str1Wrapper < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
    def v
      return @v unless @v.nil?
      _pos = @_io.pos
      @_io.seek(0)
      @v = (@_io.read_bytes_full).force_encoding("ASCII\\x").encode('UTF-8')
      @_io.seek(_pos)
      @v
    end
  end
  class Str2Wrapper < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
    def v
      return @v unless @v.nil?
      _pos = @_io.pos
      @_io.seek(0)
      @v = (@_io.read_bytes_full).force_encoding("UTF-8\'x").encode('UTF-8')
      @_io.seek(_pos)
      @v
    end
  end
  class Str3Wrapper < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
    def v
      return @v unless @v.nil?
      _pos = @_io.pos
      @_io.seek(0)
      @v = (@_io.read_bytes_full).force_encoding("SJIS\"x").encode('UTF-8')
      @_io.seek(_pos)
      @v
    end
  end
  class Str4Wrapper < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
    def v
      return @v unless @v.nil?
      _pos = @_io.pos
      @_io.seek(0)
      @v = (@_io.read_bytes_full).force_encoding("IBM437\nx").encode('UTF-8')
      @_io.seek(_pos)
      @v
    end
  end
  attr_reader :len_of_1
  attr_reader :str1
  attr_reader :len_of_2
  attr_reader :str2
  attr_reader :len_of_3
  attr_reader :str3
  attr_reader :len_of_4
  attr_reader :str4
  attr_reader :_raw_str1
  attr_reader :_raw_str2
  attr_reader :_raw_str3
  attr_reader :_raw_str4
end
