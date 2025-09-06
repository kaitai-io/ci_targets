# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
from enum import IntEnum
import collections


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DebugEnumName(KaitaiStruct):

    class TestEnum1(IntEnum):
        enum_value_80 = 80

    class TestEnum2(IntEnum):
        enum_value_65 = 65
    SEQ_FIELDS = ["one", "array_of_ints", "test_type"]
    def __init__(self, _io, _parent=None, _root=None):
        super(DebugEnumName, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._debug = collections.defaultdict(dict)

    def _read(self):
        self._debug['one']['start'] = self._io.pos()
        self.one = KaitaiStream.resolve_enum(DebugEnumName.TestEnum1, self._io.read_u1())
        self._debug['one']['end'] = self._io.pos()
        self._debug['array_of_ints']['start'] = self._io.pos()
        self._debug['array_of_ints']['arr'] = []
        self.array_of_ints = []
        for i in range(1):
            self._debug['array_of_ints']['arr'].append({'start': self._io.pos()})
            self.array_of_ints.append(KaitaiStream.resolve_enum(DebugEnumName.TestEnum2, self._io.read_u1()))
            self._debug['array_of_ints']['arr'][i]['end'] = self._io.pos()

        self._debug['array_of_ints']['end'] = self._io.pos()
        self._debug['test_type']['start'] = self._io.pos()
        self.test_type = DebugEnumName.TestSubtype(self._io, self, self._root)
        self.test_type._read()
        self._debug['test_type']['end'] = self._io.pos()


    def _fetch_instances(self):
        pass
        for i in range(len(self.array_of_ints)):
            pass

        self.test_type._fetch_instances()

    class TestSubtype(KaitaiStruct):

        class InnerEnum1(IntEnum):
            enum_value_67 = 67

        class InnerEnum2(IntEnum):
            enum_value_11 = 11
        SEQ_FIELDS = ["field1", "field2"]
        def __init__(self, _io, _parent=None, _root=None):
            super(DebugEnumName.TestSubtype, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._debug = collections.defaultdict(dict)

        def _read(self):
            self._debug['field1']['start'] = self._io.pos()
            self.field1 = KaitaiStream.resolve_enum(DebugEnumName.TestSubtype.InnerEnum1, self._io.read_u1())
            self._debug['field1']['end'] = self._io.pos()
            self._debug['field2']['start'] = self._io.pos()
            self.field2 = self._io.read_u1()
            self._debug['field2']['end'] = self._io.pos()


        def _fetch_instances(self):
            pass

        @property
        def instance_field(self):
            if hasattr(self, '_m_instance_field'):
                return self._m_instance_field

            self._m_instance_field = KaitaiStream.resolve_enum(DebugEnumName.TestSubtype.InnerEnum2, self.field2 & 15)
            return getattr(self, '_m_instance_field', None)



