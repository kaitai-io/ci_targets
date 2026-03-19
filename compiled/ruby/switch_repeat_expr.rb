# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class SwitchRepeatExpr < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @codes = []
    (3).times { |i|
      @codes << @_io.read_u1
    }
    @_raw_body = []
    @body = []
    (3).times { |i|
      case codes[i]
      when 1
        _io_body = @_io.substream(4)
        @body << One.new(_io_body, self, @_root)
      when 2
        _io_body = @_io.substream(4)
        @body << One.new(_io_body, self, @_root)
      when 7
        _io_body = @_io.substream(4)
        @body << Two.new(_io_body, self, @_root)
      else
        @body << @_io.read_bytes(4)
      end
    }
    self
  end
  class One < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @first = @_io.read_bytes_full
      self
    end
    attr_reader :first
  end
  class Two < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @second = @_io.read_bytes_full
      self
    end
    attr_reader :second
  end
  attr_reader :codes
  attr_reader :body
  attr_reader :_raw_body
end
