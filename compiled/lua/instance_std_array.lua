-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

InstanceStdArray = class.class(KaitaiStruct)

function InstanceStdArray:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function InstanceStdArray:_read()
  self.ofs = self._io:read_u4le()
  self.entry_size = self._io:read_u4le()
  self.qty_entries = self._io:read_u4le()
end

InstanceStdArray.property.entries = {}
function InstanceStdArray.property.entries:get()
  if self._m_entries ~= nil then
    return self._m_entries
  end

  _pos = self._io:pos()
  self._io:seek(self.ofs)
  self._m_entries = {}
  for i = 1, self.qty_entries do
    self._m_entries[i] = self._io:read_bytes(self.entry_size)
  end
  self._io:seek(_pos)
  return self._m_entries
end


