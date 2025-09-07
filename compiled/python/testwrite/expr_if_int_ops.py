# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ExprIfIntOps(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(ExprIfIntOps, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

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

        self._dirty = False


    def _fetch_instances(self):
        pass
        if True:
            pass

        for i in range(len(self.items)):
            pass



    def _write__seq(self, io=None):
        super(ExprIfIntOps, self)._write__seq(io)
        if True:
            pass
            self._io.write_u8le(self.key)

        self._io.write_bytes(self.skip)
        self._raw_bytes = KaitaiStream.process_xor_one(self.bytes, self.key)
        if len(self._raw_bytes) != 8:
            raise kaitaistruct.ConsistencyError(u"bytes", 8, len(self._raw_bytes))
        self._io.write_bytes(self._raw_bytes)
        for i in range(len(self.items)):
            pass
            self._io.write_s1(self.items[i])



    def _check(self):
        if True:
            pass

        if len(self.skip) != 8:
            raise kaitaistruct.ConsistencyError(u"skip", 8, len(self.skip))
        if len(self.items) != 4:
            raise kaitaistruct.ConsistencyError(u"items", 4, len(self.items))
        for i in range(len(self.items)):
            pass

        self._dirty = False

    @property
    def bytes_sub_key(self):
        if hasattr(self, '_m_bytes_sub_key'):
            return self._m_bytes_sub_key

        self._m_bytes_sub_key = KaitaiStream.byte_array_index(self.bytes, self.key)
        return getattr(self, '_m_bytes_sub_key', None)

    def _invalidate_bytes_sub_key(self):
        del self._m_bytes_sub_key
    @property
    def items_sub_key(self):
        if hasattr(self, '_m_items_sub_key'):
            return self._m_items_sub_key

        self._m_items_sub_key = self.items[self.key]
        return getattr(self, '_m_items_sub_key', None)

    def _invalidate_items_sub_key(self):
        del self._m_items_sub_key

