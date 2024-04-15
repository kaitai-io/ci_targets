# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class DebugSwitchUser < Kaitai::Struct::Struct
  attr_reader :_debug
  SEQ_FIELDS = ["code", "data"]
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    @_debug = {}
  end

  def _read
    (@_debug['code'] ||= {})[:start] = @_io.pos
    @code = @_io.read_u1
    (@_debug['code'] ||= {})[:end] = @_io.pos
    (@_debug['data'] ||= {})[:start] = @_io.pos
    case code
    when 1
      @data = One.new(@_io, self, @_root)
      @data._read
    when 2
      @data = Two.new(@_io, self, @_root)
      @data._read
    end
    (@_debug['data'] ||= {})[:end] = @_io.pos
    self
  end
  class One < Kaitai::Struct::Struct
    attr_reader :_debug
    SEQ_FIELDS = ["val"]
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      @_debug = {}
    end

    def _read
      (@_debug['val'] ||= {})[:start] = @_io.pos
      @val = @_io.read_s2le
      (@_debug['val'] ||= {})[:end] = @_io.pos
      self
    end
    attr_reader :val
  end
  class Two < Kaitai::Struct::Struct
    attr_reader :_debug
    SEQ_FIELDS = ["val"]
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      @_debug = {}
    end

    def _read
      (@_debug['val'] ||= {})[:start] = @_io.pos
      @val = @_io.read_u2le
      (@_debug['val'] ||= {})[:end] = @_io.pos
      self
    end
    attr_reader :val
  end
  attr_reader :code
  attr_reader :data
end
