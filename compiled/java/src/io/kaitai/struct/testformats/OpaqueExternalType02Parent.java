// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class OpaqueExternalType02Parent extends KaitaiStruct {
    public static OpaqueExternalType02Parent fromFile(String fileName) throws IOException {
        return new OpaqueExternalType02Parent(new KaitaiStream(fileName));
    }

    public OpaqueExternalType02Parent(KaitaiStream _io) {
        this(_io, null, null);
    }

    public OpaqueExternalType02Parent(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public OpaqueExternalType02Parent(KaitaiStream _io, KaitaiStruct _parent, OpaqueExternalType02Parent _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.parent = new ParentObj(this._io, this, _root);
    }
    public static class ParentObj extends KaitaiStruct {
        public static ParentObj fromFile(String fileName) throws IOException {
            return new ParentObj(new KaitaiStream(fileName));
        }

        public ParentObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ParentObj(KaitaiStream _io, OpaqueExternalType02Parent _parent) {
            this(_io, _parent, null);
        }

        public ParentObj(KaitaiStream _io, OpaqueExternalType02Parent _parent, OpaqueExternalType02Parent _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.child = new OpaqueExternalType02Child(this._io);
        }
        private OpaqueExternalType02Child child;
        private OpaqueExternalType02Parent _root;
        private OpaqueExternalType02Parent _parent;
        public OpaqueExternalType02Child child() { return child; }
        public OpaqueExternalType02Parent _root() { return _root; }
        public OpaqueExternalType02Parent _parent() { return _parent; }
    }
    private ParentObj parent;
    private OpaqueExternalType02Parent _root;
    private KaitaiStruct _parent;
    public ParentObj parent() { return parent; }
    public OpaqueExternalType02Parent _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
