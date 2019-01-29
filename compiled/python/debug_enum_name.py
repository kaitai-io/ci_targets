# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

from pkg_resources import parse_version
from kaitaistruct import __version__ as ks_version, KaitaiStruct, KaitaiStream, BytesIO
from enum import Enum
import collections


if parse_version(ks_version) < parse_version('0.7'):
    raise Exception("Incompatible Kaitai Struct Python API: 0.7 or later is required, but you have %s" % (ks_version))

class DebugEnumName(KaitaiStruct):

    class TestEnum1(Enum):
        enum_value_80 = 80

    class TestEnum2(Enum):
        enum_value_65 = 65
    SEQ_FIELDS = ["one", "array_of_ints", "test_type"]
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root if _root else self
        self._debug = collections.defaultdict(dict)

    def _read(self):
        self._debug['one']['start'] = self._io.pos()
        self.one = self._root.TestEnum1(self._io.read_u1())
        self._debug['one']['end'] = self._io.pos()
        self._debug['array_of_ints']['start'] = self._io.pos()
        self.array_of_ints = [None] * (1)
        for i in range(1):
            if not 'arr' in self._debug['array_of_ints']:
                self._debug['array_of_ints']['arr'] = []
            self._debug['array_of_ints']['arr'].append({'start': self._io.pos()})
            self.array_of_ints[i] = self._root.TestEnum2(self._io.read_u1())
            self._debug['array_of_ints']['arr'][i]['end'] = self._io.pos()

        self._debug['array_of_ints']['end'] = self._io.pos()
        self._debug['test_type']['start'] = self._io.pos()
        self.test_type = self._root.TestSubtype(self._io, self, self._root)
        self.test_type._read()
        self._debug['test_type']['end'] = self._io.pos()

    class TestSubtype(KaitaiStruct):

        class InnerEnum1(Enum):
            enum_value_67 = 67

        class InnerEnum2(Enum):
            enum_value_11 = 11
        SEQ_FIELDS = ["field1", "field2"]
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root if _root else self
            self._debug = collections.defaultdict(dict)

        def _read(self):
            self._debug['field1']['start'] = self._io.pos()
            self.field1 = self._root.TestSubtype.InnerEnum1(self._io.read_u1())
            self._debug['field1']['end'] = self._io.pos()
            self._debug['field2']['start'] = self._io.pos()
            self.field2 = self._io.read_u1()
            self._debug['field2']['end'] = self._io.pos()

        @property
        def instance_field(self):
            if hasattr(self, '_m_instance_field'):
                return self._m_instance_field if hasattr(self, '_m_instance_field') else None

            self._m_instance_field = self._root.TestSubtype.InnerEnum2((self.field2 & 15))
            return self._m_instance_field if hasattr(self, '_m_instance_field') else None



