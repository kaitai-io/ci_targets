# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ValidFailExpr(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.foo = self._io.read_u1()
        _ = self.foo
        if not _ == 1:
            raise kaitaistruct.ValidationExprError(self.foo, self._io, u"/seq/0")
        self.bar = self._io.read_s2le()
        _ = self.bar
        if not  ((_ < -190) or (_ > -190)) :
            raise kaitaistruct.ValidationExprError(self.bar, self._io, u"/seq/1")


    def _fetch_instances(self):
        pass


    def _write__seq(self, io=None):
        super(ValidFailExpr, self)._write__seq(io)
        self._io.write_u1(self.foo)
        self._io.write_s2le(self.bar)


    def _check(self):
        pass
        _ = self.foo
        if not _ == 1:
            raise kaitaistruct.ValidationExprError(self.foo, None, u"/seq/0")
        _ = self.bar
        if not  ((_ < -190) or (_ > -190)) :
            raise kaitaistruct.ValidationExprError(self.bar, None, u"/seq/1")


