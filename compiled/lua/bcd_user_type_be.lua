-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local stringstream = require("string_stream")

BcdUserTypeBe = class.class(KaitaiStruct)

function BcdUserTypeBe:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BcdUserTypeBe:_read()
  self._raw_ltr = self._io:read_bytes(4)
  local _io = KaitaiStream(stringstream(self._raw_ltr))
  self.ltr = BcdUserTypeBe.LtrObj(_io, self, self._root)
  self._raw_rtl = self._io:read_bytes(4)
  local _io = KaitaiStream(stringstream(self._raw_rtl))
  self.rtl = BcdUserTypeBe.RtlObj(_io, self, self._root)
  self._raw_leading_zero_ltr = self._io:read_bytes(4)
  local _io = KaitaiStream(stringstream(self._raw_leading_zero_ltr))
  self.leading_zero_ltr = BcdUserTypeBe.LeadingZeroLtrObj(_io, self, self._root)
end


BcdUserTypeBe.LtrObj = class.class(KaitaiStruct)

function BcdUserTypeBe.LtrObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BcdUserTypeBe.LtrObj:_read()
  self.b1 = self._io:read_u1()
  self.b2 = self._io:read_u1()
  self.b3 = self._io:read_u1()
  self.b4 = self._io:read_u1()
end

BcdUserTypeBe.LtrObj.property.digit2 = {}
function BcdUserTypeBe.LtrObj.property.digit2:get()
  if self._m_digit2 ~= nil then
    return self._m_digit2
  end

  self._m_digit2 = (self.b1 & 15)
  return self._m_digit2
end

BcdUserTypeBe.LtrObj.property.digit8 = {}
function BcdUserTypeBe.LtrObj.property.digit8:get()
  if self._m_digit8 ~= nil then
    return self._m_digit8
  end

  self._m_digit8 = (self.b4 & 15)
  return self._m_digit8
end

BcdUserTypeBe.LtrObj.property.as_int = {}
function BcdUserTypeBe.LtrObj.property.as_int:get()
  if self._m_as_int ~= nil then
    return self._m_as_int
  end

  self._m_as_int = ((((((((self.digit8 * 1) + (self.digit7 * 10)) + (self.digit6 * 100)) + (self.digit5 * 1000)) + (self.digit4 * 10000)) + (self.digit3 * 100000)) + (self.digit2 * 1000000)) + (self.digit1 * 10000000))
  return self._m_as_int
end

BcdUserTypeBe.LtrObj.property.as_str = {}
function BcdUserTypeBe.LtrObj.property.as_str:get()
  if self._m_as_str ~= nil then
    return self._m_as_str
  end

  self._m_as_str = tostring(self.digit1) .. tostring(self.digit2) .. tostring(self.digit3) .. tostring(self.digit4) .. tostring(self.digit5) .. tostring(self.digit6) .. tostring(self.digit7) .. tostring(self.digit8)
  return self._m_as_str
end

BcdUserTypeBe.LtrObj.property.digit4 = {}
function BcdUserTypeBe.LtrObj.property.digit4:get()
  if self._m_digit4 ~= nil then
    return self._m_digit4
  end

  self._m_digit4 = (self.b2 & 15)
  return self._m_digit4
end

BcdUserTypeBe.LtrObj.property.digit6 = {}
function BcdUserTypeBe.LtrObj.property.digit6:get()
  if self._m_digit6 ~= nil then
    return self._m_digit6
  end

  self._m_digit6 = (self.b3 & 15)
  return self._m_digit6
end

BcdUserTypeBe.LtrObj.property.digit5 = {}
function BcdUserTypeBe.LtrObj.property.digit5:get()
  if self._m_digit5 ~= nil then
    return self._m_digit5
  end

  self._m_digit5 = ((self.b3 & 240) >> 4)
  return self._m_digit5
end

BcdUserTypeBe.LtrObj.property.digit7 = {}
function BcdUserTypeBe.LtrObj.property.digit7:get()
  if self._m_digit7 ~= nil then
    return self._m_digit7
  end

  self._m_digit7 = ((self.b4 & 240) >> 4)
  return self._m_digit7
end

BcdUserTypeBe.LtrObj.property.digit1 = {}
function BcdUserTypeBe.LtrObj.property.digit1:get()
  if self._m_digit1 ~= nil then
    return self._m_digit1
  end

  self._m_digit1 = ((self.b1 & 240) >> 4)
  return self._m_digit1
end

BcdUserTypeBe.LtrObj.property.digit3 = {}
function BcdUserTypeBe.LtrObj.property.digit3:get()
  if self._m_digit3 ~= nil then
    return self._m_digit3
  end

  self._m_digit3 = ((self.b2 & 240) >> 4)
  return self._m_digit3
end


BcdUserTypeBe.RtlObj = class.class(KaitaiStruct)

function BcdUserTypeBe.RtlObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BcdUserTypeBe.RtlObj:_read()
  self.b1 = self._io:read_u1()
  self.b2 = self._io:read_u1()
  self.b3 = self._io:read_u1()
  self.b4 = self._io:read_u1()
end

BcdUserTypeBe.RtlObj.property.digit2 = {}
function BcdUserTypeBe.RtlObj.property.digit2:get()
  if self._m_digit2 ~= nil then
    return self._m_digit2
  end

  self._m_digit2 = (self.b1 & 15)
  return self._m_digit2
end

BcdUserTypeBe.RtlObj.property.digit8 = {}
function BcdUserTypeBe.RtlObj.property.digit8:get()
  if self._m_digit8 ~= nil then
    return self._m_digit8
  end

  self._m_digit8 = (self.b4 & 15)
  return self._m_digit8
end

BcdUserTypeBe.RtlObj.property.as_int = {}
function BcdUserTypeBe.RtlObj.property.as_int:get()
  if self._m_as_int ~= nil then
    return self._m_as_int
  end

  self._m_as_int = ((((((((self.digit1 * 1) + (self.digit2 * 10)) + (self.digit3 * 100)) + (self.digit4 * 1000)) + (self.digit5 * 10000)) + (self.digit6 * 100000)) + (self.digit7 * 1000000)) + (self.digit8 * 10000000))
  return self._m_as_int
end

BcdUserTypeBe.RtlObj.property.as_str = {}
function BcdUserTypeBe.RtlObj.property.as_str:get()
  if self._m_as_str ~= nil then
    return self._m_as_str
  end

  self._m_as_str = tostring(self.digit8) .. tostring(self.digit7) .. tostring(self.digit6) .. tostring(self.digit5) .. tostring(self.digit4) .. tostring(self.digit3) .. tostring(self.digit2) .. tostring(self.digit1)
  return self._m_as_str
end

BcdUserTypeBe.RtlObj.property.digit4 = {}
function BcdUserTypeBe.RtlObj.property.digit4:get()
  if self._m_digit4 ~= nil then
    return self._m_digit4
  end

  self._m_digit4 = (self.b2 & 15)
  return self._m_digit4
end

BcdUserTypeBe.RtlObj.property.digit6 = {}
function BcdUserTypeBe.RtlObj.property.digit6:get()
  if self._m_digit6 ~= nil then
    return self._m_digit6
  end

  self._m_digit6 = (self.b3 & 15)
  return self._m_digit6
end

BcdUserTypeBe.RtlObj.property.digit5 = {}
function BcdUserTypeBe.RtlObj.property.digit5:get()
  if self._m_digit5 ~= nil then
    return self._m_digit5
  end

  self._m_digit5 = ((self.b3 & 240) >> 4)
  return self._m_digit5
end

BcdUserTypeBe.RtlObj.property.digit7 = {}
function BcdUserTypeBe.RtlObj.property.digit7:get()
  if self._m_digit7 ~= nil then
    return self._m_digit7
  end

  self._m_digit7 = ((self.b4 & 240) >> 4)
  return self._m_digit7
end

BcdUserTypeBe.RtlObj.property.digit1 = {}
function BcdUserTypeBe.RtlObj.property.digit1:get()
  if self._m_digit1 ~= nil then
    return self._m_digit1
  end

  self._m_digit1 = ((self.b1 & 240) >> 4)
  return self._m_digit1
end

BcdUserTypeBe.RtlObj.property.digit3 = {}
function BcdUserTypeBe.RtlObj.property.digit3:get()
  if self._m_digit3 ~= nil then
    return self._m_digit3
  end

  self._m_digit3 = ((self.b2 & 240) >> 4)
  return self._m_digit3
end


BcdUserTypeBe.LeadingZeroLtrObj = class.class(KaitaiStruct)

function BcdUserTypeBe.LeadingZeroLtrObj:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function BcdUserTypeBe.LeadingZeroLtrObj:_read()
  self.b1 = self._io:read_u1()
  self.b2 = self._io:read_u1()
  self.b3 = self._io:read_u1()
  self.b4 = self._io:read_u1()
end

BcdUserTypeBe.LeadingZeroLtrObj.property.digit2 = {}
function BcdUserTypeBe.LeadingZeroLtrObj.property.digit2:get()
  if self._m_digit2 ~= nil then
    return self._m_digit2
  end

  self._m_digit2 = (self.b1 & 15)
  return self._m_digit2
end

BcdUserTypeBe.LeadingZeroLtrObj.property.digit8 = {}
function BcdUserTypeBe.LeadingZeroLtrObj.property.digit8:get()
  if self._m_digit8 ~= nil then
    return self._m_digit8
  end

  self._m_digit8 = (self.b4 & 15)
  return self._m_digit8
end

BcdUserTypeBe.LeadingZeroLtrObj.property.as_int = {}
function BcdUserTypeBe.LeadingZeroLtrObj.property.as_int:get()
  if self._m_as_int ~= nil then
    return self._m_as_int
  end

  self._m_as_int = ((((((((self.digit8 * 1) + (self.digit7 * 10)) + (self.digit6 * 100)) + (self.digit5 * 1000)) + (self.digit4 * 10000)) + (self.digit3 * 100000)) + (self.digit2 * 1000000)) + (self.digit1 * 10000000))
  return self._m_as_int
end

BcdUserTypeBe.LeadingZeroLtrObj.property.as_str = {}
function BcdUserTypeBe.LeadingZeroLtrObj.property.as_str:get()
  if self._m_as_str ~= nil then
    return self._m_as_str
  end

  self._m_as_str = tostring(self.digit1) .. tostring(self.digit2) .. tostring(self.digit3) .. tostring(self.digit4) .. tostring(self.digit5) .. tostring(self.digit6) .. tostring(self.digit7) .. tostring(self.digit8)
  return self._m_as_str
end

BcdUserTypeBe.LeadingZeroLtrObj.property.digit4 = {}
function BcdUserTypeBe.LeadingZeroLtrObj.property.digit4:get()
  if self._m_digit4 ~= nil then
    return self._m_digit4
  end

  self._m_digit4 = (self.b2 & 15)
  return self._m_digit4
end

BcdUserTypeBe.LeadingZeroLtrObj.property.digit6 = {}
function BcdUserTypeBe.LeadingZeroLtrObj.property.digit6:get()
  if self._m_digit6 ~= nil then
    return self._m_digit6
  end

  self._m_digit6 = (self.b3 & 15)
  return self._m_digit6
end

BcdUserTypeBe.LeadingZeroLtrObj.property.digit5 = {}
function BcdUserTypeBe.LeadingZeroLtrObj.property.digit5:get()
  if self._m_digit5 ~= nil then
    return self._m_digit5
  end

  self._m_digit5 = ((self.b3 & 240) >> 4)
  return self._m_digit5
end

BcdUserTypeBe.LeadingZeroLtrObj.property.digit7 = {}
function BcdUserTypeBe.LeadingZeroLtrObj.property.digit7:get()
  if self._m_digit7 ~= nil then
    return self._m_digit7
  end

  self._m_digit7 = ((self.b4 & 240) >> 4)
  return self._m_digit7
end

BcdUserTypeBe.LeadingZeroLtrObj.property.digit1 = {}
function BcdUserTypeBe.LeadingZeroLtrObj.property.digit1:get()
  if self._m_digit1 ~= nil then
    return self._m_digit1
  end

  self._m_digit1 = ((self.b1 & 240) >> 4)
  return self._m_digit1
end

BcdUserTypeBe.LeadingZeroLtrObj.property.digit3 = {}
function BcdUserTypeBe.LeadingZeroLtrObj.property.digit3:get()
  if self._m_digit3 ~= nil then
    return self._m_digit3
  end

  self._m_digit3 = ((self.b2 & 240) >> 4)
  return self._m_digit3
end


