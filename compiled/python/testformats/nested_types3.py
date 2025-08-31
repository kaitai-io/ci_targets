# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class NestedTypes3(KaitaiStruct):
    def __init__(self, _io, _parent=None, _root=None):
        self._io = _io
        self._parent = _parent
        self._root = _root or self
        self._read()

    def _read(self):
        self.a_cc = NestedTypes3.SubtypeA.SubtypeCc(self._io, self, self._root)
        self.a_c_d = NestedTypes3.SubtypeA.SubtypeC.SubtypeD(self._io, self, self._root)
        self.b = NestedTypes3.SubtypeB(self._io, self, self._root)


    def _fetch_instances(self):
        pass
        self.a_cc._fetch_instances()
        self.a_c_d._fetch_instances()
        self.b._fetch_instances()

    class SubtypeA(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            pass


        def _fetch_instances(self):
            pass

        class SubtypeC(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                pass


            def _fetch_instances(self):
                pass

            class SubtypeD(KaitaiStruct):
                def __init__(self, _io, _parent=None, _root=None):
                    self._io = _io
                    self._parent = _parent
                    self._root = _root
                    self._read()

                def _read(self):
                    self.value_d = self._io.read_s1()


                def _fetch_instances(self):
                    pass



        class SubtypeCc(KaitaiStruct):
            def __init__(self, _io, _parent=None, _root=None):
                self._io = _io
                self._parent = _parent
                self._root = _root
                self._read()

            def _read(self):
                self.value_cc = self._io.read_s1()


            def _fetch_instances(self):
                pass



    class SubtypeB(KaitaiStruct):
        def __init__(self, _io, _parent=None, _root=None):
            self._io = _io
            self._parent = _parent
            self._root = _root
            self._read()

        def _read(self):
            self.value_b = self._io.read_s1()
            self.a_cc = NestedTypes3.SubtypeA.SubtypeCc(self._io, self, self._root)
            self.a_c_d = NestedTypes3.SubtypeA.SubtypeC.SubtypeD(self._io, self, self._root)


        def _fetch_instances(self):
            pass
            self.a_cc._fetch_instances()
            self.a_c_d._fetch_instances()



