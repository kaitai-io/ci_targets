-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")
local str_decode = require("string_decode")

InstanceIoUser = class.class(KaitaiStruct)

function InstanceIoUser:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function InstanceIoUser:_read()
  self.qty_entries = self._io:read_u4le()
  self.entries = {}
  for i = 1, self.qty_entries do
    self.entries[i] = InstanceIoUser.Entry(self._io, self, self._root)
  end
  self._raw_strings = self._io:read_bytes_full()
  local _io = KaitaiStream(stringstream(self._raw_strings))
  self.strings = InstanceIoUser.StringsObj(_io, self, self._root)
end


InstanceIoUser.Entry = class.class(KaitaiStruct)

function InstanceIoUser.Entry:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function InstanceIoUser.Entry:_read()
  self.name_ofs = self._io:read_u4le()
  self.value = self._io:read_u4le()
end

InstanceIoUser.Entry.property.name = {}
function InstanceIoUser.Entry.property.name:get()
  if self._m_name ~= nil then
    return self._m_name
  end

  local _io = self._root.strings._io
  local _pos = _io:pos()
  _io:seek(self.name_ofs)
  self._m_name = str_decode.decode(_io:read_bytes_term(0, false, true, true), "UTF-8")
  _io:seek(_pos)
  return self._m_name
end


InstanceIoUser.StringsObj = class.class(KaitaiStruct)

function InstanceIoUser.StringsObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function InstanceIoUser.StringsObj:_read()
  self.str = {}
  local i = 1
  while not self._io:is_eof() do
    self.str[i] = str_decode.decode(self._io:read_bytes_term(0, false, true, true), "UTF-8")
    i = i + 1
  end
end


