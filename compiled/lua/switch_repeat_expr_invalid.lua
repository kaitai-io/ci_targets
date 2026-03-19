-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

SwitchRepeatExprInvalid = class.class(KaitaiStruct)

function SwitchRepeatExprInvalid:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchRepeatExprInvalid:_read()
  self.codes = {}
  for i = 0, 3 - 1 do
    self.codes[i + 1] = self._io:read_u1()
  end
  self._raw_body = {}
  self.body = {}
  for i = 0, 3 - 1 do
    local _on = self.codes[i + 1]
    if _on == 1 then
      self._raw_body[i + 1] = self._io:read_bytes(4)
      local _io = KaitaiStream(stringstream(self._raw_body[i + 1]))
      self.body[i + 1] = SwitchRepeatExprInvalid.One(_io, self, self._root)
    elseif _on == 2 then
      self._raw_body[i + 1] = self._io:read_bytes(4)
      local _io = KaitaiStream(stringstream(self._raw_body[i + 1]))
      self.body[i + 1] = SwitchRepeatExprInvalid.Two(_io, self, self._root)
    else
      self.body[i + 1] = self._io:read_bytes(4)
    end
  end
end


SwitchRepeatExprInvalid.One = class.class(KaitaiStruct)

function SwitchRepeatExprInvalid.One:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchRepeatExprInvalid.One:_read()
  self.first = self._io:read_bytes_full()
end


SwitchRepeatExprInvalid.Two = class.class(KaitaiStruct)

function SwitchRepeatExprInvalid.Two:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root
  self:_read()
end

function SwitchRepeatExprInvalid.Two:_read()
  self.second = self._io:read_bytes_full()
end


