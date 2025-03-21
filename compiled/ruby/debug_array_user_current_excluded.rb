# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class DebugArrayUserCurrentExcluded < Kaitai::Struct::Struct
  attr_reader :_debug
  SEQ_FIELDS = ["array_of_cats"]
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    @_debug = {}
  end

  def _read
    (@_debug['array_of_cats'] ||= {})[:start] = @_io.pos
    @_debug['array_of_cats'][:arr] = []
    @array_of_cats = []
    (3).times { |i|
      @_debug['array_of_cats'][:arr][i] = {:start => @_io.pos}
      _t_array_of_cats = Cat.new(@_io, self, @_root)
      begin
        _t_array_of_cats._read
      ensure
        @array_of_cats << _t_array_of_cats
      end
      @_debug['array_of_cats'][:arr][i][:end] = @_io.pos
    }
    (@_debug['array_of_cats'] ||= {})[:end] = @_io.pos
    self
  end
  class Cat < Kaitai::Struct::Struct
    attr_reader :_debug
    SEQ_FIELDS = ["meow"]
    def initialize(_io, _parent = nil, _root = nil)
      super(_io, _parent, _root)
      @_debug = {}
    end

    def _read
      (@_debug['meow'] ||= {})[:start] = @_io.pos
      @meow = @_io.read_bytes(3 - _parent.array_of_cats.length)
      (@_debug['meow'] ||= {})[:end] = @_io.pos
      self
    end
    attr_reader :meow
  end
  attr_reader :array_of_cats
end
