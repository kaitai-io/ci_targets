// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class NavParentRecursive extends KaitaiStruct.ReadWrite {
    public static NavParentRecursive fromFile(String fileName) throws IOException {
        return new NavParentRecursive(new ByteBufferKaitaiStream(fileName));
    }
    public NavParentRecursive() {
        this(null, null, null);
    }

    public NavParentRecursive(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParentRecursive(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NavParentRecursive(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavParentRecursive _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.value = this._io.readU1();
        if (value() == 255) {
            this.next = new NavParentRecursive(this._io, this, _root);
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
                throw new ConsistencyError("next", this.next._root(), _root());
            if (!Objects.equals(this.next._parent(), this))
                throw new ConsistencyError("next", this.next._parent(), this);
        }
        _dirty = false;
    }
    private Integer parentValue;
    public Integer parentValue() {
        if (this.parentValue != null)
            return this.parentValue;
        if (value() != 255) {
            this.parentValue = ((Number) (((NavParentRecursive) (_parent())).value())).intValue();
        }
        return this.parentValue;
    }
    public void _invalidateParentValue() { this.parentValue = null; }
    private int value;
    private NavParentRecursive next;
    private NavParentRecursive _root;
    private KaitaiStruct.ReadWrite _parent;
    public int value() { return value; }
    public void setValue(int _v) { _dirty = true; value = _v; }
    public NavParentRecursive next() { return next; }
    public void setNext(NavParentRecursive _v) { _dirty = true; next = _v; }
    public NavParentRecursive _root() { return _root; }
    public void set_root(NavParentRecursive _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
