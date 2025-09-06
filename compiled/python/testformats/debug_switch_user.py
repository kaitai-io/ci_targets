# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
# type: ignore

import kaitaistruct
from kaitaistruct import KaitaiStruct, KaitaiStream, BytesIO
import collections


if getattr(kaitaistruct, 'API_VERSION', (0, 9)) < (0, 11):
    raise Exception("Incompatible Kaitai Struct Python API: 0.11 or later is required, but you have %s" % (kaitaistruct.__version__))

class DebugSwitchUser(KaitaiStruct):
    SEQ_FIELDS = ["code", "data"]
    def __init__(self, _io, _parent=None, _root=None):
        super(DebugSwitchUser, self).__init__(_io)
        self._parent = _parent
        self._root = _root or self
        self._debug = collections.defaultdict(dict)

    def _read(self):
        self._debug['code']['start'] = self._io.pos()
        self.code = self._io.read_u1()
        self._debug['code']['end'] = self._io.pos()
        self._debug['data']['start'] = self._io.pos()
        _on = self.code
        if _on == 1:
            pass
            self.data = DebugSwitchUser.One(self._io, self, self._root)
            self.data._read()
        elif _on == 2:
            pass
            self.data = DebugSwitchUser.Two(self._io, self, self._root)
            self.data._read()
        self._debug['data']['end'] = self._io.pos()


    def _fetch_instances(self):
        pass
        _on = self.code
        if _on == 1:
            pass
            self.data._fetch_instances()
        elif _on == 2:
            pass
            self.data._fetch_instances()

    class One(KaitaiStruct):
        SEQ_FIELDS = ["val"]
        def __init__(self, _io, _parent=None, _root=None):
            super(DebugSwitchUser.One, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._debug = collections.defaultdict(dict)

        def _read(self):
            self._debug['val']['start'] = self._io.pos()
            self.val = self._io.read_s2le()
            self._debug['val']['end'] = self._io.pos()


        def _fetch_instances(self):
            pass


    class Two(KaitaiStruct):
        SEQ_FIELDS = ["val"]
        def __init__(self, _io, _parent=None, _root=None):
            super(DebugSwitchUser.Two, self).__init__(_io)
            self._parent = _parent
            self._root = _root
            self._debug = collections.defaultdict(dict)

        def _read(self):
            self._debug['val']['start'] = self._io.pos()
            self.val = self._io.read_u2le()
            self._debug['val']['end'] = self._io.pos()


        def _fetch_instances(self):
            pass



