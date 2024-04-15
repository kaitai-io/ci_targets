-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
require("term_strz")
local stringstream = require("string_stream")
local utils = require("utils")

TypeTernaryOpaque = class.class(KaitaiStruct)

function TypeTernaryOpaque:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function TypeTernaryOpaque:_read()
  if not(self.is_hack) then
    self._raw_dif_wo_hack = self._io:read_bytes(12)
    local _io = KaitaiStream(stringstream(self._raw_dif_wo_hack))
    self.dif_wo_hack = TermStrz(_io)
  end
  if self.is_hack then
    self._raw__raw_dif_with_hack = self._io:read_bytes(12)
    self._raw_dif_with_hack = KaitaiStream.process_xor_one(self._raw__raw_dif_with_hack, 3)
    local _io = KaitaiStream(stringstream(self._raw_dif_with_hack))
    self.dif_with_hack = TermStrz(_io)
  end
end

TypeTernaryOpaque.property.dif = {}
function TypeTernaryOpaque.property.dif:get()
  if self._m_dif ~= nil then
    return self._m_dif
  end

  self._m_dif = utils.box_unwrap((not(self.is_hack)) and utils.box_wrap(self.dif_wo_hack) or (self.dif_with_hack))
  return self._m_dif
end

TypeTernaryOpaque.property.is_hack = {}
function TypeTernaryOpaque.property.is_hack:get()
  if self._m_is_hack ~= nil then
    return self._m_is_hack
  end

  self._m_is_hack = false
  return self._m_is_hack
end


