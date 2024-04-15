-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

IoLocalVar = class.class(KaitaiStruct)

function IoLocalVar:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function IoLocalVar:_read()
  self.skip = self._io:read_bytes(20)
  if self.mess_up._io:pos() < 0 then
    self.always_null = self._io:read_u1()
  end
  self.followup = self._io:read_u1()
end

IoLocalVar.property.mess_up = {}
function IoLocalVar.property.mess_up:get()
  if self._m_mess_up ~= nil then
    return self._m_mess_up
  end

  local _io = self._root._io
  local _pos = _io:pos()
  _io:seek(8)
  local _on = 2
  if _on == 1 then
    self._raw__m_mess_up = _io:read_bytes(2)
    local _io = KaitaiStream(stringstream(self._raw__m_mess_up))
    self._m_mess_up = IoLocalVar.Dummy(_io, self, self._root)
  elseif _on == 2 then
    self._raw__m_mess_up = _io:read_bytes(2)
    local _io = KaitaiStream(stringstream(self._raw__m_mess_up))
    self._m_mess_up = IoLocalVar.Dummy(_io, self, self._root)
  else
    self._m_mess_up = _io:read_bytes(2)
  end
  _io:seek(_pos)
  return self._m_mess_up
end


IoLocalVar.Dummy = class.class(KaitaiStruct)

function IoLocalVar.Dummy:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function IoLocalVar.Dummy:_read()
end


