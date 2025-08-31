# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class InstanceInRepeatUntil < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = nil)
    super(_io, _parent, _root || self)
    _read
  end

  def _read
    @entries = []
    i = 0
    begin
      _ = @_io.read_s2le
      @entries << _
      i += 1
    end until _ == until_val
    self
  end
  def until_val
    return @until_val unless @until_val.nil?
    _pos = @_io.pos
    @_io.seek(_io.pos + 12)
    @until_val = @_io.read_s2le
    @_io.seek(_pos)
    @until_val
  end
  attr_reader :entries
end
