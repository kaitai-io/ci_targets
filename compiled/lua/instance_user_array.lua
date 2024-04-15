-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

InstanceUserArray = class.class(KaitaiStruct)

function InstanceUserArray:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function InstanceUserArray:_read()
  self.ofs = self._io:read_u4le()
  self.entry_size = self._io:read_u4le()
  self.qty_entries = self._io:read_u4le()
end

InstanceUserArray.property.user_entries = {}
function InstanceUserArray.property.user_entries:get()
  if self._m_user_entries ~= nil then
    return self._m_user_entries
  end

  if self.ofs > 0 then
    local _pos = self._io:pos()
    self._io:seek(self.ofs)
    self._raw__m_user_entries = {}
    self._m_user_entries = {}
    for i = 0, self.qty_entries - 1 do
      self._raw__m_user_entries[i + 1] = self._io:read_bytes(self.entry_size)
      local _io = KaitaiStream(stringstream(self._raw__m_user_entries[i + 1]))
      self._m_user_entries[i + 1] = InstanceUserArray.Entry(_io, self, self._root)
    end
    self._io:seek(_pos)
  end
  return self._m_user_entries
end


InstanceUserArray.Entry = class.class(KaitaiStruct)

function InstanceUserArray.Entry:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function InstanceUserArray.Entry:_read()
  self.word1 = self._io:read_u2le()
  self.word2 = self._io:read_u2le()
end


