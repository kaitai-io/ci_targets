# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class Test < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @seq_block = Test::MyType(2).new(@_io)
    self
  end
  class MyType < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self, repeat_count)
      super(_io, _parent, _root)
      @repeat_count = repeat_count
      _read
    end

    def _read
      @world = @_io.read_s4be
      @repeated_thing = Array.new(repeat_count)
      (repeat_count).times { |i|
        @repeated_thing[i] = @_io.read_s4be
      }
      self
    end
    attr_reader :world
    attr_reader :repeated_thing
    attr_reader :repeat_count
  end
  attr_reader :seq_block
end
