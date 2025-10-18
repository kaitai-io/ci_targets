// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class NavParentFalse extends KaitaiStruct.ReadWrite {
    public static NavParentFalse fromFile(String fileName) throws IOException {
        return new NavParentFalse(new ByteBufferKaitaiStream(fileName));
    }
    public NavParentFalse() {
        this(null, null, null);
    }

    public NavParentFalse(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentFalse(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NavParentFalse(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavParentFalse _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.childSize = this._io.readU1();
        this.elementA = new ParentA(this._io, this, _root);
        this.elementA._read();
        this.elementB = new ParentB(this._io, this, _root);
        this.elementB._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.elementA._fetchInstances();
        this.elementB._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.childSize);
        this.elementA._write_Seq(this._io);
        this.elementB._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.elementA._root(), _root()))
            throw new ConsistencyError("element_a", _root(), this.elementA._root());
        if (!Objects.equals(this.elementA._parent(), this))
            throw new ConsistencyError("element_a", this, this.elementA._parent());
        if (!Objects.equals(this.elementB._root(), _root()))
            throw new ConsistencyError("element_b", _root(), this.elementB._root());
        if (!Objects.equals(this.elementB._parent(), this))
            throw new ConsistencyError("element_b", this, this.elementB._parent());
        _dirty = false;
    }
    public static class Child extends KaitaiStruct.ReadWrite {
        public static Child fromFile(String fileName) throws IOException {
            return new Child(new ByteBufferKaitaiStream(fileName));
        }
        public Child() {
            this(null, null, null);
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
        }
        public void _read() {
            this.code = this._io.readU1();
            if (code() == 73) {
                this.more = this._io.readBytes(_parent()._parent().childSize());
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            if (code() == 73) {
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.code);
            if (code() == 73) {
                this._io.writeBytes(this.more);
            }
        }

        public void _check() {
            if (code() == 73) {
                if (this.more.length != _parent()._parent().childSize())
                    throw new ConsistencyError("more", _parent()._parent().childSize(), this.more.length);
            }
            _dirty = false;
        }
        public int code() { return code; }
        public void setCode(int _v) { _dirty = true; code = _v; }
        public byte[] more() { return more; }
        public void setMore(byte[] _v) { _dirty = true; more = _v; }
        public NavParentFalse _root() { return _root; }
        public void set_root(NavParentFalse _v) { _dirty = true; _root = _v; }
        public NavParentFalse.ParentA _parent() { return _parent; }
        public void set_parent(NavParentFalse.ParentA _v) { _dirty = true; _parent = _v; }
        private int code;
        private byte[] more;
        private NavParentFalse _root;
        private NavParentFalse.ParentA _parent;
    }
    public static class ParentA extends KaitaiStruct.ReadWrite {
        public static ParentA fromFile(String fileName) throws IOException {
            return new ParentA(new ByteBufferKaitaiStream(fileName));
        }
        public ParentA() {
            this(null, null, null);
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
        }
        public void _read() {
            this.foo = new Child(this._io, this, _root);
            this.foo._read();
            this.bar = new ParentB(this._io, this, _root);
            this.bar._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.foo._fetchInstances();
            this.bar._fetchInstances();
        }

        public void _write_Seq() {
            _assertNotDirty();
            this.foo._write_Seq(this._io);
            this.bar._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.foo._root(), _root()))
                throw new ConsistencyError("foo", _root(), this.foo._root());
            if (!Objects.equals(this.foo._parent(), this))
                throw new ConsistencyError("foo", this, this.foo._parent());
            if (!Objects.equals(this.bar._root(), _root()))
                throw new ConsistencyError("bar", _root(), this.bar._root());
            if (!Objects.equals(this.bar._parent(), this))
                throw new ConsistencyError("bar", this, this.bar._parent());
            _dirty = false;
        }
        public Child foo() { return foo; }
        public void setFoo(Child _v) { _dirty = true; foo = _v; }
        public ParentB bar() { return bar; }
        public void setBar(ParentB _v) { _dirty = true; bar = _v; }
        public NavParentFalse _root() { return _root; }
        public void set_root(NavParentFalse _v) { _dirty = true; _root = _v; }
        public NavParentFalse _parent() { return _parent; }
        public void set_parent(NavParentFalse _v) { _dirty = true; _parent = _v; }
        private Child foo;
        private ParentB bar;
        private NavParentFalse _root;
        private NavParentFalse _parent;
    }
    public static class ParentB extends KaitaiStruct.ReadWrite {
        public static ParentB fromFile(String fileName) throws IOException {
            return new ParentB(new ByteBufferKaitaiStream(fileName));
        }
        public ParentB() {
            this(null, null, null);
        }

        public ParentB(KaitaiStream _io) {
            this(_io, null, null);
        }

        public ParentB(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
            this(_io, _parent, null);
        }

        public ParentB(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavParentFalse _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.foo = new Child(this._io, null, _root);
            this.foo._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.foo._fetchInstances();
        }

        public void _write_Seq() {
            _assertNotDirty();
            this.foo._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.foo._root(), _root()))
                throw new ConsistencyError("foo", _root(), this.foo._root());
            if (!Objects.equals(this.foo._parent(), null))
                throw new ConsistencyError("foo", null, this.foo._parent());
            _dirty = false;
        }
        public Child foo() { return foo; }
        public void setFoo(Child _v) { _dirty = true; foo = _v; }
        public NavParentFalse _root() { return _root; }
        public void set_root(NavParentFalse _v) { _dirty = true; _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
        private Child foo;
        private NavParentFalse _root;
        private KaitaiStruct.ReadWrite _parent;
    }
    public int childSize() { return childSize; }
    public void setChildSize(int _v) { _dirty = true; childSize = _v; }
    public ParentA elementA() { return elementA; }
    public void setElementA(ParentA _v) { _dirty = true; elementA = _v; }
    public ParentB elementB() { return elementB; }
    public void setElementB(ParentB _v) { _dirty = true; elementB = _v; }
    public NavParentFalse _root() { return _root; }
    public void set_root(NavParentFalse _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private int childSize;
    private ParentA elementA;
    private ParentB elementB;
    private NavParentFalse _root;
    private KaitaiStruct.ReadWrite _parent;
}
