-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

ValidFailRepeatExpr = class.class(KaitaiStruct)

function ValidFailRepeatExpr:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function ValidFailRepeatExpr:_read()
  self.foo = {}
  local i = 0
  while not self._io:is_eof() do
    self.foo[i + 1] = self._io:read_bytes(4)
    local _ = self.foo[i + 1]
    if not(_ ~= "\000\018\052\086") then
      error("ValidationExprError")
    end
    i = i + 1
  end
end


