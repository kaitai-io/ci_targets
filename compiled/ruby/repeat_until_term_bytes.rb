# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class RepeatUntilTermBytes < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @records1 = []
    i = 0
    begin
      _ = @_io.read_bytes_term(170, false, true, true)
      @records1 << _
      i += 1
    end until _.size == 0
    @records2 = []
    i = 0
    begin
      _ = @_io.read_bytes_term(170, true, true, true)
      @records2 << _
      i += 1
    end until _ != [170].pack('C*')
    @records3 = []
    i = 0
    begin
      _ = @_io.read_bytes_term(85, false, false, true)
      @records3 << _
      i += 1
    end until _ == records1.last
    self
  end
  attr_reader :records1
  attr_reader :records2
  attr_reader :records3
end
