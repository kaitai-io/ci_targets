// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class NavParentFalse2 extends KaitaiStruct.ReadWrite {
    public static NavParentFalse2 fromFile(String fileName) throws IOException {
        return new NavParentFalse2(new ByteBufferKaitaiStream(fileName));
    }
    public NavParentFalse2() {
        this(null, null, null);
    }

    public NavParentFalse2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentFalse2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NavParentFalse2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavParentFalse2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.parentless = new Child(this._io, null, _root);
        this.parentless._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.parentless._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.parentless._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.parentless._root(), _root()))
            throw new ConsistencyError("parentless", this.parentless._root(), _root());
        if (!Objects.equals(this.parentless._parent(), null))
            throw new ConsistencyError("parentless", this.parentless._parent(), null);
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

        public Child(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
            this(_io, _parent, null);
        }

        public Child(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavParentFalse2 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.foo = this._io.readU1();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU1(this.foo);
        }

        public void _check() {
            _dirty = false;
        }
        private int foo;
        private NavParentFalse2 _root;
        private KaitaiStruct.ReadWrite _parent;
        public int foo() { return foo; }
        public void setFoo(int _v) { _dirty = true; foo = _v; }
        public NavParentFalse2 _root() { return _root; }
        public void set_root(NavParentFalse2 _v) { _dirty = true; _root = _v; }
        public KaitaiStruct.ReadWrite _parent() { return _parent; }
        public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    }
    private Child parentless;
    private NavParentFalse2 _root;
    private KaitaiStruct.ReadWrite _parent;
    public Child parentless() { return parentless; }
    public void setParentless(Child _v) { _dirty = true; parentless = _v; }
    public NavParentFalse2 _root() { return _root; }
    public void set_root(NavParentFalse2 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
