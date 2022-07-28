# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EosExceptionU4 < Kaitai::Struct::Struct
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
      @prebuf = @_io.read_bytes(3)
      @fail_int = @_io.read_u4le
      self
    end
    attr_reader :prebuf
    attr_reader :fail_int
  end
  attr_reader :envelope
  attr_reader :_raw_envelope
end
