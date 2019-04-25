-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

ProcessCoerceSwitch = class.class(KaitaiStruct)

function ProcessCoerceSwitch:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessCoerceSwitch:_read()
  self.buf_type = self._io:read_u1()
  self.flag = self._io:read_u1()
  if self.flag == 0 then
    local _on = self.buf_type
    if _on == 0 then
      self._raw_buf_unproc = self._io:read_bytes(4)
      local _io = KaitaiStream(stringstream(self._raw_buf_unproc))
      self.buf_unproc = ProcessCoerceSwitch.Foo(_io, self, self._root)
    else
      self.buf_unproc = self._io:read_bytes(4)
    end
  end
  if self.flag ~= 0 then
    local _on = self.buf_type
    if _on == 0 then
      self._raw__raw_buf_proc = self._io:read_bytes(4)
      self._raw_buf_proc = KaitaiStream.process_xor_one(self._raw__raw_buf_proc, 170)
      local _io = KaitaiStream(stringstream(self._raw_buf_proc))
      self.buf_proc = ProcessCoerceSwitch.Foo(_io, self, self._root)
    else
      self._raw_buf_proc = self._io:read_bytes(4)
      self.buf_proc = KaitaiStream.process_xor_one(self._raw_buf_proc, 170)
    end
  end
end

ProcessCoerceSwitch.property.buf = {}
function ProcessCoerceSwitch.property.buf:get()
  if self._m_buf ~= nil then
    return self._m_buf
  end

  self._m_buf = (((self.flag == 0) and (self.buf_unproc)) or (self.buf_proc))
  return self._m_buf
end


ProcessCoerceSwitch.Foo = class.class(KaitaiStruct)

function ProcessCoerceSwitch.Foo:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ProcessCoerceSwitch.Foo:_read()
  self.bar = self._io:read_bytes(4)
end


