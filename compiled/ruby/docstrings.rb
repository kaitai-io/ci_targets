# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.11')
  raise "Incompatible Kaitai Struct Ruby API: 0.11 or later is required, but you have #{Kaitai::Struct::VERSION}"
end


##
# One-liner description of a type.
class Docstrings < Kaitai::Struct::Struct
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @one = @_io.read_u1
    self
  end

  ##
  # This subtype is never used, yet has a very long description
  # that spans multiple lines. It should be formatted accordingly,
  # even in languages that have single-line comments for
  # docstrings. Actually, there's even a MarkDown-style list here
  # with several bullets:
  # 
  # * one
  # * two
  # * three
  # 
  # And the text continues after that. Here's a MarkDown-style link:
  # [woohoo](http://example.com) - one day it will be supported as
  # well.
  class ComplexSubtype < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      self
    end
  end

  ##
  # Another description for parse instance "two"
  def two
    return @two unless @two.nil?
    _pos = @_io.pos
    @_io.seek(0)
    @two = @_io.read_u1
    @_io.seek(_pos)
    @two
  end

  ##
  # And yet another one for value instance "three"
  def three
    return @three unless @three.nil?
    @three = 66
    @three
  end

  ##
  # A pretty verbose description for sequence attribute "one"
  attr_reader :one
end
