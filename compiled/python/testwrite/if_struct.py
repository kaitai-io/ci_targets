# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import ReadWriteKaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class IfStruct(ReadWriteKaitaiStruct):
    def __init__(self, _io=None, _parent=None, _root=None):
        super(IfStruct, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self

    def _read(self):
        self.op1 = IfStruct.Operation(self._io, self, self._root)
        self.op1._read()
        self.op2 = IfStruct.Operation(self._io, self, self._root)
        self.op2._read()
        self.op3 = IfStruct.Operation(self._io, self, self._root)
        self.op3._read()
        self._dirty = False


    def _fetch_instances(self):
        pass
        self.op1._fetch_instances()
        self.op2._fetch_instances()
        self.op3._fetch_instances()


    def _write__seq(self, io=None):
        super(IfStruct, self)._write__seq(io)
        self.op1._write__seq(self._io)
        self.op2._write__seq(self._io)
        self.op3._write__seq(self._io)


    def _check(self):
        if self.op1._root != self._root:
            raise kaitaistruct.ConsistencyError(u"op1", self.op1._root, self._root)
        if self.op1._parent != self:
            raise kaitaistruct.ConsistencyError(u"op1", self.op1._parent, self)
        if self.op2._root != self._root:
            raise kaitaistruct.ConsistencyError(u"op2", self.op2._root, self._root)
        if self.op2._parent != self:
            raise kaitaistruct.ConsistencyError(u"op2", self.op2._parent, self)
        if self.op3._root != self._root:
            raise kaitaistruct.ConsistencyError(u"op3", self.op3._root, self._root)
        if self.op3._parent != self:
            raise kaitaistruct.ConsistencyError(u"op3", self.op3._parent, self)
        self._dirty = False

    class ArgStr(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(IfStruct.ArgStr, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.len = self._io.read_u1()
            self.str = (self._io.read_bytes(self.len)).decode(u"UTF-8")
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(IfStruct.ArgStr, self)._write__seq(io)
            self._io.write_u1(self.len)
            self._io.write_bytes((self.str).encode(u"UTF-8"))


        def _check(self):
            if len((self.str).encode(u"UTF-8")) != self.len:
                raise kaitaistruct.ConsistencyError(u"str", len((self.str).encode(u"UTF-8")), self.len)
            self._dirty = False


    class ArgTuple(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(IfStruct.ArgTuple, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.num1 = self._io.read_u1()
            self.num2 = self._io.read_u1()
            self._dirty = False


        def _fetch_instances(self):
            pass


        def _write__seq(self, io=None):
            super(IfStruct.ArgTuple, self)._write__seq(io)
            self._io.write_u1(self.num1)
            self._io.write_u1(self.num2)


        def _check(self):
            self._dirty = False


    class Operation(ReadWriteKaitaiStruct):
        def __init__(self, _io=None, _parent=None, _root=None):
            super(IfStruct.Operation, self).__init__(_io)
            self._parent = _parent
            self._root = _root

        def _read(self):
            self.opcode = self._io.read_u1()
            if self.opcode == 84:
                pass
                self.arg_tuple = IfStruct.ArgTuple(self._io, self, self._root)
                self.arg_tuple._read()

            if self.opcode == 83:
                pass
                self.arg_str = IfStruct.ArgStr(self._io, self, self._root)
                self.arg_str._read()

            self._dirty = False


        def _fetch_instances(self):
            pass
            if self.opcode == 84:
                pass
                self.arg_tuple._fetch_instances()

            if self.opcode == 83:
                pass
                self.arg_str._fetch_instances()



        def _write__seq(self, io=None):
            super(IfStruct.Operation, self)._write__seq(io)
            self._io.write_u1(self.opcode)
            if self.opcode == 84:
                pass
                self.arg_tuple._write__seq(self._io)

            if self.opcode == 83:
                pass
                self.arg_str._write__seq(self._io)



        def _check(self):
            if self.opcode == 84:
                pass
                if self.arg_tuple._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"arg_tuple", self.arg_tuple._root, self._root)
                if self.arg_tuple._parent != self:
                    raise kaitaistruct.ConsistencyError(u"arg_tuple", self.arg_tuple._parent, self)

            if self.opcode == 83:
                pass
                if self.arg_str._root != self._root:
                    raise kaitaistruct.ConsistencyError(u"arg_str", self.arg_str._root, self._root)
                if self.arg_str._parent != self:
                    raise kaitaistruct.ConsistencyError(u"arg_str", self.arg_str._parent, self)

            self._dirty = False



