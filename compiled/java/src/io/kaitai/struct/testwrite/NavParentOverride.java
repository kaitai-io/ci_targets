// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class NavParentOverride extends KaitaiStruct.ReadWrite {
    public static NavParentOverride fromFile(String fileName) throws IOException {
        return new NavParentOverride(new ByteBufferKaitaiStream(fileName));
    }
    public NavParentOverride() {
        this(null, null, null);
    }

    public NavParentOverride(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentOverride(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NavParentOverride(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavParentOverride _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.childSize = this._io.readU1();
        this.child1 = new Child(this._io, this, _root);
        this.child1._read();
        this.mediator2 = new Mediator(this._io, this, _root);
        this.mediator2._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.child1._fetchInstances();
        this.mediator2._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.childSize);
        this.child1._write_Seq(this._io);
        this.mediator2._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.child1._root(), _root()))
            throw new ConsistencyError("child_1", this.child1._root(), _root());
        if (!Objects.equals(this.child1._parent(), this))
            throw new ConsistencyError("child_1", this.child1._parent(), this);
        if (!Objects.equals(this.mediator2._root(), _root()))
            throw new ConsistencyError("mediator_2", this.mediator2._root(), _root());
        if (!Objects.equals(this.mediator2._parent(), this))
            throw new ConsistencyError("mediator_2", this.mediator2._parent(), this);
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

        public Child(KaitaiStream _io, NavParentOverride _parent) {
            this(_io, _parent, null);
        }

        public Child(KaitaiStream _io, NavParentOverride _parent, NavParentOverride _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.data = this._io.readBytes(_parent().childSize());
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.data);
        }

        public void _check() {
            if (this.data.length != _parent().childSize())
                throw new ConsistencyError("data", this.data.length, _parent().childSize());
            _dirty = false;
        }
        private byte[] data;
        private NavParentOverride _root;
        private NavParentOverride _parent;
        public byte[] data() { return data; }
        public void setData(byte[] _v) { _dirty = true; data = _v; }
        public NavParentOverride _root() { return _root; }
        public void set_root(NavParentOverride _v) { _dirty = true; _root = _v; }
        public NavParentOverride _parent() { return _parent; }
        public void set_parent(NavParentOverride _v) { _dirty = true; _parent = _v; }
    }
    public static class Mediator extends KaitaiStruct.ReadWrite {
        public static Mediator fromFile(String fileName) throws IOException {
            return new Mediator(new ByteBufferKaitaiStream(fileName));
        }
        public Mediator() {
            this(null, null, null);
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
        }
        public void _read() {
            this.child2 = new Child(this._io, _parent(), _root);
            this.child2._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.child2._fetchInstances();
        }

        public void _write_Seq() {
            _assertNotDirty();
            this.child2._write_Seq(this._io);
        }

        public void _check() {
            if (!Objects.equals(this.child2._root(), _root()))
                throw new ConsistencyError("child_2", this.child2._root(), _root());
            if (!Objects.equals(this.child2._parent(), _parent()))
                throw new ConsistencyError("child_2", this.child2._parent(), _parent());
            _dirty = false;
        }
        private Child child2;
        private NavParentOverride _root;
        private NavParentOverride _parent;
        public Child child2() { return child2; }
        public void setChild2(Child _v) { _dirty = true; child2 = _v; }
        public NavParentOverride _root() { return _root; }
        public void set_root(NavParentOverride _v) { _dirty = true; _root = _v; }
        public NavParentOverride _parent() { return _parent; }
        public void set_parent(NavParentOverride _v) { _dirty = true; _parent = _v; }
    }
    private int childSize;
    private Child child1;
    private Mediator mediator2;
    private NavParentOverride _root;
    private KaitaiStruct.ReadWrite _parent;
    public int childSize() { return childSize; }
    public void setChildSize(int _v) { _dirty = true; childSize = _v; }
    public Child child1() { return child1; }
    public void setChild1(Child _v) { _dirty = true; child1 = _v; }
    public Mediator mediator2() { return mediator2; }
    public void setMediator2(Mediator _v) { _dirty = true; mediator2 = _v; }
    public NavParentOverride _root() { return _root; }
    public void set_root(NavParentOverride _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
