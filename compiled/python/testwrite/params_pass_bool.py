# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class ParamsPassBool(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.s_false = self._io.read_bits_int_be(1) != 0
        self.s_true = self._io.read_bits_int_be(1) != 0
        self.seq_b1 = ParamsPassBool.ParamTypeB1(self.s_true, self._io, self, self._root)
        self.seq_b1._read()
        self.seq_bool = ParamsPassBool.ParamTypeBool(self.s_false, self._io, self, self._root)
        self.seq_bool._read()
        self.literal_b1 = ParamsPassBool.ParamTypeB1(False, self._io, self, self._root)
        self.literal_b1._read()
        self.literal_bool = ParamsPassBool.ParamTypeBool(True, self._io, self, self._root)
        self.literal_bool._read()
        self.inst_b1 = ParamsPassBool.ParamTypeB1(self.v_true, self._io, self, self._root)
        self.inst_b1._read()
        self.inst_bool = ParamsPassBool.ParamTypeBool(self.v_false, self._io, self, self._root)
        self.inst_bool._read()


    def _fetch_instances(self):
        pass
        self.seq_b1._fetch_instances()
        self.seq_bool._fetch_instances()
        self.literal_b1._fetch_instances()
        self.literal_bool._fetch_instances()
        self.inst_b1._fetch_instances()
        self.inst_bool._fetch_instances()


    def _write__seq(self, io=None):
        super(ParamsPassBool, self)._write__seq(io)
        self._io.write_bits_int_be(1, int(self.s_false))
        self._io.write_bits_int_be(1, int(self.s_true))
        self.seq_b1._write__seq(self._io)
        self.seq_bool._write__seq(self._io)
        self.literal_b1._write__seq(self._io)
        self.literal_bool._write__seq(self._io)
        self.inst_b1._write__seq(self._io)
        self.inst_bool._write__seq(self._io)


    def _check(self):
        pass
        if self.seq_b1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"seq_b1", self.seq_b1._root, self._root)
        if self.seq_b1._parent != self:
            raise kaitaistruct.ConsistencyError(u"seq_b1", self.seq_b1._parent, self)
        if self.seq_b1.arg != self.s_true:
            raise kaitaistruct.ConsistencyError(u"seq_b1", self.seq_b1.arg, self.s_true)
        if self.seq_bool._root != self._root:
            raise kaitaistruct.ConsistencyError(u"seq_bool", self.seq_bool._root, self._root)
        if self.seq_bool._parent != self:
            raise kaitaistruct.ConsistencyError(u"seq_bool", self.seq_bool._parent, self)
        if self.seq_bool.arg != self.s_false:
            raise kaitaistruct.ConsistencyError(u"seq_bool", self.seq_bool.arg, self.s_false)
        if self.literal_b1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"literal_b1", self.literal_b1._root, self._root)
        if self.literal_b1._parent != self:
            raise kaitaistruct.ConsistencyError(u"literal_b1", self.literal_b1._parent, self)
        if self.literal_b1.arg != False:
            raise kaitaistruct.ConsistencyError(u"literal_b1", self.literal_b1.arg, False)
        if self.literal_bool._root != self._root:
            raise kaitaistruct.ConsistencyError(u"literal_bool", self.literal_bool._root, self._root)
        if self.literal_bool._parent != self:
            raise kaitaistruct.ConsistencyError(u"literal_bool", self.literal_bool._parent, self)
        if self.literal_bool.arg != True:
            raise kaitaistruct.ConsistencyError(u"literal_bool", self.literal_bool.arg, True)
        if self.inst_b1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"inst_b1", self.inst_b1._root, self._root)
        if self.inst_b1._parent != self:
            raise kaitaistruct.ConsistencyError(u"inst_b1", self.inst_b1._parent, self)
        if self.inst_b1.arg != self.v_true:
            raise kaitaistruct.ConsistencyError(u"inst_b1", self.inst_b1.arg, self.v_true)
        if self.inst_bool._root != self._root:
            raise kaitaistruct.ConsistencyError(u"inst_bool", self.inst_bool._root, self._root)
        if self.inst_bool._parent != self:
            raise kaitaistruct.ConsistencyError(u"inst_bool", self.inst_bool._parent, self)
        if self.inst_bool.arg != self.v_false:
            raise kaitaistruct.ConsistencyError(u"inst_bool", self.inst_bool.arg, self.v_false)

    class ParamTypeB1(ReadWriteKaitaiStruct):
        def __init__(self, arg, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self.arg = arg

        def _read(self):
            self.foo = self._io.read_bytes((1 if self.arg else 2))


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ParamsPassBool.ParamTypeB1, self)._write__seq(io)
            self._io.write_bytes(self.foo)


        def _check(self):
            pass
            if len(self.foo) != (1 if self.arg else 2):
                raise kaitaistruct.ConsistencyError(u"foo", len(self.foo), (1 if self.arg else 2))


    class ParamTypeBool(ReadWriteKaitaiStruct):
        def __init__(self, arg, _io=None, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self.arg = arg

        def _read(self):
            self.foo = self._io.read_bytes((1 if self.arg else 2))


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(ParamsPassBool.ParamTypeBool, self)._write__seq(io)
            self._io.write_bytes(self.foo)


        def _check(self):
            pass
            if len(self.foo) != (1 if self.arg else 2):
                raise kaitaistruct.ConsistencyError(u"foo", len(self.foo), (1 if self.arg else 2))


    @property
    def v_false(self):
        if hasattr(self, '_m_v_false'):
            return self._m_v_false

        self._m_v_false = False
        return getattr(self, '_m_v_false', None)

    def _invalidate_v_false(self):
        del self._m_v_false
    @property
    def v_true(self):
        if hasattr(self, '_m_v_true'):
            return self._m_v_true

        self._m_v_true = True
        return getattr(self, '_m_v_true', None)

    def _invalidate_v_true(self):
        del self._m_v_true

