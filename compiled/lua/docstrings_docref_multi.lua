-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")

-- 
-- Sample docstring.
-- See also: Plain text description of doc ref, page 42
-- See also: Source (http://www.example.com/some/path/?even_with=query&more=2)
-- See also: Documentation name (http://www.example.com/three)
DocstringsDocrefMulti = class.class(KaitaiStruct)

function DocstringsDocrefMulti:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function DocstringsDocrefMulti:_read()
end


