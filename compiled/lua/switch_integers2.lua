-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

SwitchIntegers2 = class.class(KaitaiStruct)

function SwitchIntegers2:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchIntegers2:_read()
  self.code = self._io:read_u1()
  local _on = self.code
  if _on == 1 then
    self.len = self._io:read_u1()
  elseif _on == 2 then
    self.len = self._io:read_u2le()
  elseif _on == 4 then
    self.len = self._io:read_u4le()
  elseif _on == 8 then
    self.len = self._io:read_u8le()
  end
  self.ham = self._io:read_bytes(self.len)
  if self.len > 3 then
    self.padding = self._io:read_u1()
  end
end

SwitchIntegers2.property.len_mod_str = {}
function SwitchIntegers2.property.len_mod_str:get()
  if self._m_len_mod_str ~= nil then
    return self._m_len_mod_str
  end

  self._m_len_mod_str = tostring(self.len * 2 - 1)
  return self._m_len_mod_str
end


