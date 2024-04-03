# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EosExceptionSized < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    _io_envelope = @_io.substream(6)
    @envelope = Data.new(_io_envelope, self, @_root)
    self
  end
  class Data < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      _io_buf = @_io.substream(7)
      @buf = Foo.new(_io_buf, self, @_root)
      self
    end
    attr_reader :buf
    attr_reader :_raw_buf
  end
  class Foo < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
  end
  attr_reader :envelope
  attr_reader :_raw_envelope
end
