// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class NavRootRecursive extends KaitaiStruct.ReadWrite {
    public static NavRootRecursive fromFile(String fileName) throws IOException {
        return new NavRootRecursive(new ByteBufferKaitaiStream(fileName));
    }
    public NavRootRecursive() {
        this(null, null, null);
    }

    public NavRootRecursive(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavRootRecursive(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NavRootRecursive(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavRootRecursive _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.value = this._io.readU1();
        if (value() == 255) {
            this.next = new NavRootRecursive(this._io, this, _root);
            this.next._read();
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        if (value() == 255) {
            this.next._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.value);
        if (value() == 255) {
            this.next._write_Seq(this._io);
        }
    }

    public void _check() {
        if (value() == 255) {
            if (!Objects.equals(this.next._root(), _root()))
                throw new ConsistencyError("next", _root(), this.next._root());
            if (!Objects.equals(this.next._parent(), this))
                throw new ConsistencyError("next", this, this.next._parent());
        }
        _dirty = false;
    }
    public Integer rootValue() {
        if (this.rootValue != null)
            return this.rootValue;
        this.rootValue = ((Number) (_root().value())).intValue();
        return this.rootValue;
    }
    public void _invalidateRootValue() { this.rootValue = null; }
    public int value() { return value; }
    public void setValue(int _v) { _dirty = true; value = _v; }
    public NavRootRecursive next() { return next; }
    public void setNext(NavRootRecursive _v) { _dirty = true; next = _v; }
    public NavRootRecursive _root() { return _root; }
    public void set_root(NavRootRecursive _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Integer rootValue;
    private int value;
    private NavRootRecursive next;
    private NavRootRecursive _root;
    private KaitaiStruct.ReadWrite _parent;
}
