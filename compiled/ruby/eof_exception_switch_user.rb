# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class EofExceptionSwitchUser < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @code = @_io.read_u2le
    case code
    when 2
      @data = Two.new(@_io, self, @_root)
    when 511
      @data = One.new(@_io, self, @_root)
    end
    self
  end
  class One < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @val = @_io.read_s2le
      self
    end
    attr_reader :val
  end
  class Two < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @val = @_io.read_u2le
      self
    end
    attr_reader :val
  end
  attr_reader :code
  attr_reader :data
end
