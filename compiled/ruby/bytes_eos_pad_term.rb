# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class BytesEosPadTerm < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    _io_str_pad = @_io.substream(20)
    @str_pad = StrPadType.new(_io_str_pad, self, @_root)
    _io_str_term = @_io.substream(20)
    @str_term = StrTermType.new(_io_str_term, self, @_root)
    _io_str_term_and_pad = @_io.substream(20)
    @str_term_and_pad = StrTermAndPadType.new(_io_str_term_and_pad, self, @_root)
    _io_str_term_include = @_io.substream(20)
    @str_term_include = StrTermIncludeType.new(_io_str_term_include, self, @_root)
    self
  end
  class StrPadType < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes_full, 64)
      self
    end
    attr_reader :value
  end
  class StrTermAndPadType < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = Kaitai::Struct::Stream::bytes_terminate(Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes_full, 43), 64, false)
      self
    end
    attr_reader :value
  end
  class StrTermIncludeType < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = Kaitai::Struct::Stream::bytes_terminate(@_io.read_bytes_full, 64, true)
      self
    end
    attr_reader :value
  end
  class StrTermType < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = Kaitai::Struct::Stream::bytes_terminate(@_io.read_bytes_full, 64, false)
      self
    end
    attr_reader :value
  end
  attr_reader :str_pad
  attr_reader :str_term
  attr_reader :str_term_and_pad
  attr_reader :str_term_include
  attr_reader :_raw_str_pad
  attr_reader :_raw_str_term
  attr_reader :_raw_str_term_and_pad
  attr_reader :_raw_str_term_include
end
