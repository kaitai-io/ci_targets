// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NavParentFalse2 extends KaitaiStruct {
    public static NavParentFalse2 fromFile(String fileName) throws IOException {
        return new NavParentFalse2(new KaitaiStream(fileName));
    }

    public NavParentFalse2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentFalse2(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NavParentFalse2(KaitaiStream _io, KaitaiStruct _parent, NavParentFalse2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.parentless = new Child(this._io, null, _root);
    }
    public static class Child extends KaitaiStruct {
        public static Child fromFile(String fileName) throws IOException {
            return new Child(new KaitaiStream(fileName));
        }

        public Child(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Child(KaitaiStream _io, KaitaiStruct _parent) {
            this(_io, _parent, null);
        }

        public Child(KaitaiStream _io, KaitaiStruct _parent, NavParentFalse2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.foo = this._io.readU1();
        }
        private int foo;
        private NavParentFalse2 _root;
        private KaitaiStruct _parent;
        public int foo() { return foo; }
        public NavParentFalse2 _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    private Child parentless;
    private NavParentFalse2 _root;
    private KaitaiStruct _parent;
    public Child parentless() { return parentless; }
    public NavParentFalse2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
