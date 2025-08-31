// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NavParentFalse extends KaitaiStruct {
    public static NavParentFalse fromFile(String fileName) throws IOException {
        return new NavParentFalse(new ByteBufferKaitaiStream(fileName));
    }

    public NavParentFalse(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentFalse(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NavParentFalse(KaitaiStream _io, KaitaiStruct _parent, NavParentFalse _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.childSize = this._io.readU1();
        this.elementA = new ParentA(this._io, this, _root);
        this.elementB = new ParentB(this._io, this, _root);
    }

    public void _fetchInstances() {
        this.elementA._fetchInstances();
        this.elementB._fetchInstances();
    }
    public static class Child extends KaitaiStruct {
        public static Child fromFile(String fileName) throws IOException {
            return new Child(new ByteBufferKaitaiStream(fileName));
        }

        public Child(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Child(KaitaiStream _io, NavParentFalse.ParentA _parent) {
            this(_io, _parent, null);
        }

        public Child(KaitaiStream _io, NavParentFalse.ParentA _parent, NavParentFalse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.code = this._io.readU1();
            if (code() == 73) {
                this.more = this._io.readBytes(_parent()._parent().childSize());
            }
        }

        public void _fetchInstances() {
            if (code() == 73) {
            }
        }
        private int code;
        private byte[] more;
        private NavParentFalse _root;
        private NavParentFalse.ParentA _parent;
        public int code() { return code; }
        public byte[] more() { return more; }
        public NavParentFalse _root() { return _root; }
        public NavParentFalse.ParentA _parent() { return _parent; }
    }
    public static class ParentA extends KaitaiStruct {
        public static ParentA fromFile(String fileName) throws IOException {
            return new ParentA(new ByteBufferKaitaiStream(fileName));
        }

        public ParentA(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ParentA(KaitaiStream _io, NavParentFalse _parent) {
            this(_io, _parent, null);
        }

        public ParentA(KaitaiStream _io, NavParentFalse _parent, NavParentFalse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.foo = new Child(this._io, this, _root);
            this.bar = new ParentB(this._io, this, _root);
        }

        public void _fetchInstances() {
            this.foo._fetchInstances();
            this.bar._fetchInstances();
        }
        private Child foo;
        private ParentB bar;
        private NavParentFalse _root;
        private NavParentFalse _parent;
        public Child foo() { return foo; }
        public ParentB bar() { return bar; }
        public NavParentFalse _root() { return _root; }
        public NavParentFalse _parent() { return _parent; }
    }
    public static class ParentB extends KaitaiStruct {
        public static ParentB fromFile(String fileName) throws IOException {
            return new ParentB(new ByteBufferKaitaiStream(fileName));
        }

        public ParentB(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ParentB(KaitaiStream _io, KaitaiStruct _parent) {
            this(_io, _parent, null);
        }

        public ParentB(KaitaiStream _io, KaitaiStruct _parent, NavParentFalse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.foo = new Child(this._io, null, _root);
        }

        public void _fetchInstances() {
            this.foo._fetchInstances();
        }
        private Child foo;
        private NavParentFalse _root;
        private KaitaiStruct _parent;
        public Child foo() { return foo; }
        public NavParentFalse _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    private int childSize;
    private ParentA elementA;
    private ParentB elementB;
    private NavParentFalse _root;
    private KaitaiStruct _parent;
    public int childSize() { return childSize; }
    public ParentA elementA() { return elementA; }
    public ParentB elementB() { return elementB; }
    public NavParentFalse _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
