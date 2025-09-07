# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
import collections


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprIoEofBits(ReadWriteKaitaiStruct):
    SEQ_FIELDS = ["foo", "bar", "baz", "align", "qux"]
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ExprIoEofBits, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._debug = collections.defaultdict(dict)

    def _read(self):
        self._debug['foo']['start'] = self._io.pos()
        self.foo = self._io.read_bits_int_be(20)
        self._debug['foo']['end'] = self._io.pos()
        if (not (self._io.is_eof())):
            pass
            self._debug['bar']['start'] = self._io.pos()
            self.bar = self._io.read_bits_int_be(4)
            self._debug['bar']['end'] = self._io.pos()

        if (not (self._io.is_eof())):
            pass
            self._debug['baz']['start'] = self._io.pos()
            self.baz = self._io.read_bits_int_be(16)
            self._debug['baz']['end'] = self._io.pos()

        self._debug['align']['start'] = self._io.pos()
        self.align = self._io.read_bytes(0)
        self._debug['align']['end'] = self._io.pos()
        if (not (self._io.is_eof())):
            pass
            self._debug['qux']['start'] = self._io.pos()
            self.qux = self._io.read_bits_int_be(16)
            self._debug['qux']['end'] = self._io.pos()

        self._dirty = False


    def _fetch_instances(self):
        pass
        if (not (self._io.is_eof())):
            pass

        if (not (self._io.is_eof())):
            pass

        if (not (self._io.is_eof())):
            pass



    def _write__seq(self, io=None):
        super(ExprIoEofBits, self)._write__seq(io)
        self._io.write_bits_int_be(20, self.foo)
        if (not (self._io.is_eof())):
            pass
            self._io.write_bits_int_be(4, self.bar)

        if (not (self._io.is_eof())):
            pass
            self._io.write_bits_int_be(16, self.baz)

        self._io.write_bytes(self.align)
        if (not (self._io.is_eof())):
            pass
            self._io.write_bits_int_be(16, self.qux)



    def _check(self):
        if len(self.align) != 0:
            raise kaitaistruct.ConsistencyError(u"align", 0, len(self.align))
        self._dirty = False


