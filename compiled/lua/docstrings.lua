-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

-- 
-- One-liner description of a type.
Docstrings = class.class(KaitaiStruct)

function Docstrings:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Docstrings:_read()
  self.one = self._io:read_u1()
end

-- 
-- Another description for parse instance "two".
Docstrings.property.two = {}
function Docstrings.property.two:get()
  if self._m_two ~= nil then
    return self._m_two
  end

  local _pos = self._io:pos()
  self._io:seek(0)
  self._m_two = self._io:read_u1()
  self._io:seek(_pos)
  return self._m_two
end

-- 
-- And yet another one for value instance "three".
Docstrings.property.three = {}
function Docstrings.property.three:get()
  if self._m_three ~= nil then
    return self._m_three
  end

  self._m_three = 66
  return self._m_three
end

-- 
-- A pretty verbose description for sequence attribute "one".

-- 
-- This subtype is never used, yet has a very long description
-- that spans multiple lines. It should be formatted accordingly,
-- even in languages that have single-line comments for
-- docstrings. Actually, there's even a MarkDown-style list here
-- with several bullets:
-- 
-- * one
-- * two
-- * three
-- 
-- And the text continues after that. Here's a MarkDown-style link:
-- [woohoo](http://example.com) - one day it will be supported as
-- well.
Docstrings.ComplexSubtype = class.class(KaitaiStruct)

function Docstrings.ComplexSubtype:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Docstrings.ComplexSubtype:_read()
end


