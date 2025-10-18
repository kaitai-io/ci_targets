// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class OpaqueExternalType02Parent extends KaitaiStruct.ReadWrite {
    public static OpaqueExternalType02Parent fromFile(String fileName) throws IOException {
        return new OpaqueExternalType02Parent(new ByteBufferKaitaiStream(fileName));
    }
    public OpaqueExternalType02Parent() {
        this(null, null, null);
    }

    public OpaqueExternalType02Parent(KaitaiStream _io) {
        this(_io, null, null);
    }

    public OpaqueExternalType02Parent(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public OpaqueExternalType02Parent(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, OpaqueExternalType02Parent _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.parent = new ParentObj(this._io, this, _root);
        this.parent._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.parent._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.parent._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.parent._root(), _root()))
            throw new ConsistencyError("parent", _root(), this.parent._root());
        if (!Objects.equals(this.parent._parent(), this))
            throw new ConsistencyError("parent", this, this.parent._parent());
        _dirty = false;
    }
    public static class ParentObj extends KaitaiStruct.ReadWrite {
        public static ParentObj fromFile(String fileName) throws IOException {
            return new ParentObj(new ByteBufferKaitaiStream(fileName));
        }
        public ParentObj() {
            this(null, null, null);
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
        }
        public void _read() {
            this.child = new OpaqueExternalType02Child(this._io);
            this.child._read();
            _dirty = false;
        }

        public void _fetchInstances() {
            this.child._fetchInstances();
        }

        public void _write_Seq() {
            _assertNotDirty();
            this.child._write_Seq(this._io);
        }

        public void _check() {
            _dirty = false;
        }
        public OpaqueExternalType02Child child() { return child; }
        public void setChild(OpaqueExternalType02Child _v) { _dirty = true; child = _v; }
        public OpaqueExternalType02Parent _root() { return _root; }
        public void set_root(OpaqueExternalType02Parent _v) { _dirty = true; _root = _v; }
        public OpaqueExternalType02Parent _parent() { return _parent; }
        public void set_parent(OpaqueExternalType02Parent _v) { _dirty = true; _parent = _v; }
        private OpaqueExternalType02Child child;
        private OpaqueExternalType02Parent _root;
        private OpaqueExternalType02Parent _parent;
    }
    public ParentObj parent() { return parent; }
    public void setParent(ParentObj _v) { _dirty = true; parent = _v; }
    public OpaqueExternalType02Parent _root() { return _root; }
    public void set_root(OpaqueExternalType02Parent _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private ParentObj parent;
    private OpaqueExternalType02Parent _root;
    private KaitaiStruct.ReadWrite _parent;
}
