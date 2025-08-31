# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprIfIntOps(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        if True:
            pass
            self.key = self._io.read_u8le()

        self.skip = self._io.read_bytes(8)
        self._raw_bytes = self._io.read_bytes(8)
        self.bytes = KaitaiStream.process_xor_one(self._raw_bytes, self.key)
        self.items = []
        for i in range(4):
            self.items.append(self._io.read_s1())



    def _fetch_instances(self):
        pass
        if True:
            pass

        for i in range(len(self.items)):
            pass


    @property
    def bytes_sub_key(self):
        if hasattr(self, '_m_bytes_sub_key'):
            return self._m_bytes_sub_key

        self._m_bytes_sub_key = KaitaiStream.byte_array_index(self.bytes, self.key)
        return getattr(self, '_m_bytes_sub_key', None)

    @property
    def items_sub_key(self):
        if hasattr(self, '_m_items_sub_key'):
            return self._m_items_sub_key

        self._m_items_sub_key = self.items[self.key]
        return getattr(self, '_m_items_sub_key', None)


