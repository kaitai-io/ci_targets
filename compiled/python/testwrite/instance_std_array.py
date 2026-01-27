# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception(f"Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have {kaitaistruct.__version__}")

class InstanceStdArray(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super().__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._should_write_entries = False
        self.entries__enabled = True

    def _read(self):
        self.ofs = self._io.read_u4le()
        self.entry_size = self._io.read_u4le()
        self.qty_entries = self._io.read_u4le()
        self._dirty = False


    def _fetch_instances(self):
        pass
        _ = self.entries
        if hasattr(self, '_m_entries'):
            pass
            for i in range(len(self._m_entries)):
                pass




    def _write__seq(self, io=None):
        super()._write__seq(io)
        self._should_write_entries = self.entries__enabled
        self._io.write_u4le(self.ofs)
        self._io.write_u4le(self.entry_size)
        self._io.write_u4le(self.qty_entries)


    def _check(self):
        if self.entries__enabled:
            pass
            if len(self._m_entries) != self.qty_entries:
                raise kaitaistruct.ConsistencyError("entries", self.qty_entries, len(self._m_entries))
            for i in range(len(self._m_entries)):
                pass
                if len(self._m_entries[i]) != self.entry_size:
                    raise kaitaistruct.ConsistencyError("entries", self.entry_size, len(self._m_entries[i]))


        self._dirty = False

    @property
    def entries(self):
        if self._should_write_entries:
            self._write_entries()
        if hasattr(self, '_m_entries'):
            return self._m_entries

        if not self.entries__enabled:
            return None

        _pos = self._io.pos()
        self._io.seek(self.ofs)
        self._m_entries = []
        for i in range(self.qty_entries):
            self._m_entries.append(self._io.read_bytes(self.entry_size))

        self._io.seek(_pos)
        return getattr(self, '_m_entries', None)

    @entries.setter
    def entries(self, v):
        self._dirty = True
        self._m_entries = v

    def _write_entries(self):
        self._should_write_entries = False
        _pos = self._io.pos()
        self._io.seek(self.ofs)
        for i in range(len(self._m_entries)):
            pass
            self._io.write_bytes(self._m_entries[i])

        self._io.seek(_pos)


