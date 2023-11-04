# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ProcessCoerceSwitch(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._read()

    def _read(self):
        self.buf_type = self._io.read_u1()
        self.flag = self._io.read_u1()
        if self.flag == 0:
            _on = self.buf_type
            if _on == 0:
                self._raw_buf_unproc = self._io.read_bytes(4)
                _io__raw_buf_unproc = KaitaiStream(BytesIO(self._raw_buf_unproc))
                self.buf_unproc = ProcessCoerceSwitch.Foo(_io__raw_buf_unproc, self, self._root)
            else:
                self.buf_unproc = self._io.read_bytes(4)

        if self.flag != 0:
            _on = self.buf_type
            if _on == 0:
                self._raw__raw_buf_proc = self._io.read_bytes(4)
                self._raw_buf_proc = KaitaiStream.process_xor_one(self._raw__raw_buf_proc, 170)
                _io__raw_buf_proc = KaitaiStream(BytesIO(self._raw_buf_proc))
                self.buf_proc = ProcessCoerceSwitch.Foo(_io__raw_buf_proc, self, self._root)
            else:
                self._raw_buf_proc = self._io.read_bytes(4)
                self.buf_proc = KaitaiStream.process_xor_one(self._raw_buf_proc, 170)


    class Foo(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._read()

        def _read(self):
            self.bar = self._io.read_bytes(4)


    @property
    def buf(self):
        if hasattr(self, '_m_buf'):
            return self._m_buf

        self._m_buf = (self.buf_unproc if self.flag == 0 else self.buf_proc)
        return getattr(self, '_m_buf', None)


