# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO
from testwrite import hello_world


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class TypeTernaryOpaque(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(TypeTernaryOpaque, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        if (not (self.is_hack)):
            pass
            self._raw_dif_wo_hack = self._io.read_bytes(1)
            _io__raw_dif_wo_hack = KaitaiStream(BytesIO(self._raw_dif_wo_hack))
            self.dif_wo_hack = hello_world.HelloWorld(_io__raw_dif_wo_hack)
            self.dif_wo_hack._read()

        if self.is_hack:
            pass
            self._raw__raw_dif_with_hack = self._io.read_bytes(1)
            self._raw_dif_with_hack = KaitaiStream.process_xor_one(self._raw__raw_dif_with_hack, 3)
            _io__raw_dif_with_hack = KaitaiStream(BytesIO(self._raw_dif_with_hack))
            self.dif_with_hack = hello_world.HelloWorld(_io__raw_dif_with_hack)
            self.dif_with_hack._read()

        self._dirty = False


    def _fetch_instances(self):
        pass
        if (not (self.is_hack)):
            pass
            self.dif_wo_hack._fetch_instances()

        if self.is_hack:
            pass
            self.dif_with_hack._fetch_instances()



    def _write__seq(self, io=None):
        super(TypeTernaryOpaque, self)._write__seq(io)
        if (not (self.is_hack)):
            pass
            _io__raw_dif_wo_hack = KaitaiStream(BytesIO(bytearray(1)))
            self._io.add_child_stream(_io__raw_dif_wo_hack)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (1))
            def handler(parent, _io__raw_dif_wo_hack=_io__raw_dif_wo_hack):
                self._raw_dif_wo_hack = _io__raw_dif_wo_hack.to_byte_array()
                if len(self._raw_dif_wo_hack) != 1:
                    raise kaitaistruct.ConsistencyError(u"raw(dif_wo_hack)", len(self._raw_dif_wo_hack), 1)
                parent.write_bytes(self._raw_dif_wo_hack)
            _io__raw_dif_wo_hack.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.dif_wo_hack._write__seq(_io__raw_dif_wo_hack)

        if self.is_hack:
            pass
            _io__raw_dif_with_hack = KaitaiStream(BytesIO(bytearray(1)))
            self._io.add_child_stream(_io__raw_dif_with_hack)
            _pos2 = self._io.pos()
            self._io.seek(self._io.pos() + (1))
            _process_val = 3
            def handler(parent, _io__raw_dif_with_hack=_io__raw_dif_with_hack, _process_val=_process_val):
                self._raw_dif_with_hack = _io__raw_dif_with_hack.to_byte_array()
                self._raw__raw_dif_with_hack = KaitaiStream.process_xor_one(self._raw_dif_with_hack, _process_val)
                if len(self._raw__raw_dif_with_hack) != 1:
                    raise kaitaistruct.ConsistencyError(u"raw(dif_with_hack)", len(self._raw__raw_dif_with_hack), 1)
                parent.write_bytes(self._raw__raw_dif_with_hack)
            _io__raw_dif_with_hack.write_back_handler = KaitaiStream.WriteBackHandler(_pos2, handler)
            self.dif_with_hack._write__seq(_io__raw_dif_with_hack)



    def _check(self):
        if (not (self.is_hack)):
            pass

        if self.is_hack:
            pass

        self._dirty = False

    @property
    def dif(self):
        if hasattr(self, '_m_dif'):
            return self._m_dif

        self._m_dif = (self.dif_wo_hack if (not (self.is_hack)) else self.dif_with_hack)
        return getattr(self, '_m_dif', None)

    def _invalidate_dif(self):
        del self._m_dif
    @property
    def is_hack(self):
        if hasattr(self, '_m_is_hack'):
            return self._m_is_hack

        self._m_is_hack = False
        return getattr(self, '_m_is_hack', None)

    def _invalidate_is_hack(self):
        del self._m_is_hack

