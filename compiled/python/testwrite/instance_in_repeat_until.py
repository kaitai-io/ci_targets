# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class InstanceInRepeatUntil(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._should_write_until_val = False
        self.until_val__to_write = True

    def _read(self):
        self.entries = []
        i = 0
        while True:
            _ = self._io.read_s2le()
            self.entries.append(_)
            if _ == self.until_val:
                break
            i += 1


    def _fetch_instances(self):
        pass
        for i in range(len(self.entries)):
            pass

        _ = self.until_val


    def _write__seq(self, io=None):
        super(InstanceInRepeatUntil, self)._write__seq(io)
        self._should_write_until_val = self.until_val__to_write
        for i in range(len(self.entries)):
            pass
            self._io.write_s2le(self.entries[i])
            _ = self.entries[i]
            if (_ == self.until_val) != (i == len(self.entries) - 1):
                raise kaitaistruct.ConsistencyError(u"entries", _ == self.until_val, i == len(self.entries) - 1)



    def _check(self):
        pass
        if len(self.entries) == 0:
            raise kaitaistruct.ConsistencyError(u"entries", len(self.entries), 0)
        for i in range(len(self.entries)):
            pass


    @property
    def until_val(self):
        if self._should_write_until_val:
            self._write_until_val()
        if hasattr(self, '_m_until_val'):
            return self._m_until_val

        _pos = self._io.pos()
        self._io.seek(self._io.pos() + 12)
        self._m_until_val = self._io.read_s2le()
        self._io.seek(_pos)
        return getattr(self, '_m_until_val', None)

    @until_val.setter
    def until_val(self, v):
        self._m_until_val = v

    def _write_until_val(self):
        self._should_write_until_val = False
        _pos = self._io.pos()
        self._io.seek(self._io.pos() + 12)
        self._io.write_s2le(self._m_until_val)
        self._io.seek(_pos)


    def _check_until_val(self):
        pass


