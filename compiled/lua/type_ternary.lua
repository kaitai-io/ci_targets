-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

TypeTernary = class.class(KaitaiStruct)

function TypeTernary:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TypeTernary:_read()
  if not(self.is_hack) then
    self._raw_dif_wo_hack = self._io:read_bytes(1)
    local io = KaitaiStream(stringstream(self._raw_dif_wo_hack))
    self.dif_wo_hack = TypeTernary.Dummy(io, self, self._root)
  end
  self._raw__raw_dif_with_hack = self._io:read_bytes(1)
  self._raw_dif_with_hack = KaitaiStream.process_xor_one(self._raw__raw_dif_with_hack, 3)
  local io = KaitaiStream(stringstream(self._raw_dif_with_hack))
  self.dif_with_hack = TypeTernary.Dummy(io, self, self._root)
end

TypeTernary.property.is_hack = {}
function TypeTernary.property.is_hack:get()
  if self._m_is_hack ~= nil then
    return self._m_is_hack
  end

  self._m_is_hack = true
  return self._m_is_hack
end

TypeTernary.property.dif = {}
function TypeTernary.property.dif:get()
  if self._m_dif ~= nil then
    return self._m_dif
  end

  self._m_dif = (((not(self.is_hack)) and (self.dif_wo_hack)) or (self.dif_with_hack))
  return self._m_dif
end

TypeTernary.property.dif_value = {}
function TypeTernary.property.dif_value:get()
  if self._m_dif_value ~= nil then
    return self._m_dif_value
  end

  self._m_dif_value = self.dif.value
  return self._m_dif_value
end


TypeTernary.Dummy = class.class(KaitaiStruct)

function TypeTernary.Dummy:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TypeTernary.Dummy:_read()
  self.value = self._io:read_u1()
end


