# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class InstanceInRepeatUntil(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        super(InstanceInRepeatUntil, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._read()

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
        if hasattr(self, '_m_until_val'):
            pass


    @property
    def until_val(self):
        if hasattr(self, '_m_until_val'):
            return self._m_until_val

        _pos = self._io.pos()
        self._io.seek(self._io.pos() + 12)
        self._m_until_val = self._io.read_s2le()
        self._io.seek(_pos)
        return getattr(self, '_m_until_val', None)


