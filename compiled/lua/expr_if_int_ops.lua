-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ExprIfIntOps = class.class(KaitaiStruct)

function ExprIfIntOps:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ExprIfIntOps:_read()
  if true then
    self.key = self._io:read_u8le()
  end
  self.skip = self._io:read_bytes(8)
  self._raw_bytes = self._io:read_bytes(8)
  self.bytes = KaitaiStream.process_xor_one(self._raw_bytes, self.key)
  self.items = {}
  for i = 0, 4 - 1 do
    self.items[i + 1] = self._io:read_s1()
  end
end

ExprIfIntOps.property.bytes_sub_key = {}
function ExprIfIntOps.property.bytes_sub_key:get()
  if self._m_bytes_sub_key ~= nil then
    return self._m_bytes_sub_key
  end

  self._m_bytes_sub_key = string.byte(self.bytes, self.key + 1)
  return self._m_bytes_sub_key
end

ExprIfIntOps.property.items_sub_key = {}
function ExprIfIntOps.property.items_sub_key:get()
  if self._m_items_sub_key ~= nil then
    return self._m_items_sub_key
  end

  self._m_items_sub_key = self.items[self.key + 1]
  return self._m_items_sub_key
end


