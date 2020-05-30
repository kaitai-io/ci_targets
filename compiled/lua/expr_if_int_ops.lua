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
  self.skip = self._io:read_bytes(2)
  if true then
    self.it = self._io:read_s2le()
  end
  if true then
    self.boxed = self._io:read_s2le()
  end
end

ExprIfIntOps.property.is_eq_prim = {}
function ExprIfIntOps.property.is_eq_prim:get()
  if self._m_is_eq_prim ~= nil then
    return self._m_is_eq_prim
  end

  self._m_is_eq_prim = self.it == 16705
  return self._m_is_eq_prim
end

ExprIfIntOps.property.is_eq_boxed = {}
function ExprIfIntOps.property.is_eq_boxed:get()
  if self._m_is_eq_boxed ~= nil then
    return self._m_is_eq_boxed
  end

  self._m_is_eq_boxed = self.it == self.boxed
  return self._m_is_eq_boxed
end


