// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NavParentOverride extends KaitaiStruct {
    public static NavParentOverride fromFile(String fileName) throws IOException {
        return new NavParentOverride(new ByteBufferKaitaiStream(fileName));
    }

    public NavParentOverride(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentOverride(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NavParentOverride(KaitaiStream _io, KaitaiStruct _parent, NavParentOverride _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.childSize = this._io.readU1();
        this.child1 = new Child(this._io, this, _root);
        this.mediator2 = new Mediator(this._io, this, _root);
    }
    public static class Child extends KaitaiStruct {
        public static Child fromFile(String fileName) throws IOException {
            return new Child(new ByteBufferKaitaiStream(fileName));
        }

        public Child(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Child(KaitaiStream _io, NavParentOverride _parent) {
            this(_io, _parent, null);
        }

        public Child(KaitaiStream _io, NavParentOverride _parent, NavParentOverride _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.data = this._io.readBytes(_parent().childSize());
        }
        private byte[] data;
        private NavParentOverride _root;
        private NavParentOverride _parent;
        public byte[] data() { return data; }
        public NavParentOverride _root() { return _root; }
        public NavParentOverride _parent() { return _parent; }
    }
    public static class Mediator extends KaitaiStruct {
        public static Mediator fromFile(String fileName) throws IOException {
            return new Mediator(new ByteBufferKaitaiStream(fileName));
        }

        public Mediator(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Mediator(KaitaiStream _io, NavParentOverride _parent) {
            this(_io, _parent, null);
        }

        public Mediator(KaitaiStream _io, NavParentOverride _parent, NavParentOverride _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.child2 = new Child(this._io, _parent(), _root);
        }
        private Child child2;
        private NavParentOverride _root;
        private NavParentOverride _parent;
        public Child child2() { return child2; }
        public NavParentOverride _root() { return _root; }
        public NavParentOverride _parent() { return _parent; }
    }
    private int childSize;
    private Child child1;
    private Mediator mediator2;
    private NavParentOverride _root;
    private KaitaiStruct _parent;
    public int childSize() { return childSize; }
    public Child child1() { return child1; }
    public Mediator mediator2() { return mediator2; }
    public NavParentOverride _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
