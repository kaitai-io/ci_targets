-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("integers")

NameClashImportVsInst = class.class(KaitaiStruct)

function NameClashImportVsInst:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function NameClashImportVsInst:_read()
end

NameClashImportVsInst.property.integers = {}
function NameClashImportVsInst.property.integers:get()
  if self._m_integers ~= nil then
    return self._m_integers
  end

  local _pos = self._io:pos()
  self._io:seek(0)
  self._m_integers = Integers(self._io)
  self._io:seek(_pos)
  return self._m_integers
end

NameClashImportVsInst.property.std = {}
function NameClashImportVsInst.property.std:get()
  if self._m_std ~= nil then
    return self._m_std
  end

  self._m_std = 1 + 2
  return self._m_std
end


