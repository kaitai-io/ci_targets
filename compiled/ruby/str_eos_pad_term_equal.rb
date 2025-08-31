# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class StrEosPadTermEqual < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    _io_s1 = @_io.substream(20)
    @s1 = S1Type.new(_io_s1, self, @_root)
    _io_s2 = @_io.substream(20)
    @s2 = S2Type.new(_io_s2, self, @_root)
    _io_s3 = @_io.substream(20)
    @s3 = S3Type.new(_io_s3, self, @_root)
    _io_s4 = @_io.substream(20)
    @s4 = S4Type.new(_io_s4, self, @_root)
    self
  end
  class S1Type < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = (Kaitai::Struct::Stream::bytes_terminate(Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes_full, 64), 64, false)).force_encoding("UTF-8")
      self
    end
    attr_reader :value
  end
  class S2Type < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = (Kaitai::Struct::Stream::bytes_terminate(Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes_full, 43), 64, true)).force_encoding("UTF-8")
      self
    end
    attr_reader :value
  end
  class S3Type < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = (Kaitai::Struct::Stream::bytes_terminate(Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes_full, 43), 43, false)).force_encoding("UTF-8")
      self
    end
    attr_reader :value
  end
  class S4Type < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @value = (Kaitai::Struct::Stream::bytes_terminate(Kaitai::Struct::Stream::bytes_strip_right(@_io.read_bytes_full, 46), 46, true)).force_encoding("UTF-8")
      self
    end
    attr_reader :value
  end
  attr_reader :s1
  attr_reader :s2
  attr_reader :s3
  attr_reader :s4
  attr_reader :_raw_s1
  attr_reader :_raw_s2
  attr_reader :_raw_s3
  attr_reader :_raw_s4
end
