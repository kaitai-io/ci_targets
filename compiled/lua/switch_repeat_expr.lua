-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

SwitchRepeatExpr = class.class(KaitaiStruct)

function SwitchRepeatExpr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchRepeatExpr:_read()
  self.code = self._io:read_u1()
  self.size = self._io:read_u4le()
  self._raw_body = {}
  self.body = {}
  for i = 1, 1 do
    local _on = self.code
    if _on == 17 then
      self._raw_body[i] = self._io:read_bytes(self.size)
      local io = KaitaiStream(stringstream(self._raw_body[i]))
      self.body[i] = SwitchRepeatExpr.One(io, self, self._root)
    elseif _on == 34 then
      self._raw_body[i] = self._io:read_bytes(self.size)
      local io = KaitaiStream(stringstream(self._raw_body[i]))
      self.body[i] = SwitchRepeatExpr.Two(io, self, self._root)
    else
      self.body[i] = self._io:read_bytes(self.size)
    end
  end
end


SwitchRepeatExpr.One = class.class(KaitaiStruct)

function SwitchRepeatExpr.One:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchRepeatExpr.One:_read()
  self.first = self._io:read_bytes_full()
end


SwitchRepeatExpr.Two = class.class(KaitaiStruct)

function SwitchRepeatExpr.Two:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function SwitchRepeatExpr.Two:_read()
  self.second = self._io:read_bytes_full()
end


