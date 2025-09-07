# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class EosExceptionBytes(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(EosExceptionBytes, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self._raw_envelope = self._io.read_bytes(6)
        _io__raw_envelope = KaitaiStream(BytesIO(self._raw_envelope))
        self.envelope = EosExceptionBytes.Data(_io__raw_envelope, self, self._root)
        self.envelope._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.envelope._fetch_instances()


    def _write__seq(self, io=None):
        super(EosExceptionBytes, self)._write__seq(io)
        _io__raw_envelope = KaitaiStream(BytesIO(bytearray(6)))
        self._io.add_child_stream(_io__raw_envelope)
        _pos2 = self._io.pos()
        self._io.seek(self._io.pos() + (6))
        def handler(parent, _io__raw_envelope=_io__raw_envelope):
            self._raw_envelope = _io__raw_envelope.to_byte_array()
            if len(self._raw_envelope) != 6:
                raise kaitaistruct.ConsistencyError(u"raw(envelope)", 6, len(self._raw_envelope))
            parent.write_bytes(self._raw_envelope)
        _io__raw_envelope.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
        self.envelope._write__seq(_io__raw_envelope)


    def _check(self):
        if self.envelope._root != self._root:
            raise kaitaistruct.ConsistencyError(u"envelope", self._root, self.envelope._root)
        if self.envelope._parent != self:
            raise kaitaistruct.ConsistencyError(u"envelope", self, self.envelope._parent)
        self._dirty = False

    class Data(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(EosExceptionBytes.Data, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.buf = self._io.read_bytes(7)
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(EosExceptionBytes.Data, self)._write__seq(io)
            self._io.write_bytes(self.buf)


        def _check(self):
            if len(self.buf) != 7:
                raise kaitaistruct.ConsistencyError(u"buf", 7, len(self.buf))
            self._dirty = False



