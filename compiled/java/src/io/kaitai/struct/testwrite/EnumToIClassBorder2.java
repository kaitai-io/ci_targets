// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EnumToIClassBorder2 extends KaitaiStruct.ReadWrite {
    public EnumToIClassBorder2(EnumToIClassBorder1 parent) {
        this(null, null, null, parent);
    }

    public EnumToIClassBorder2(KaitaiStream _io, EnumToIClassBorder1 parent) {
        this(_io, null, null, parent);
    }

    public EnumToIClassBorder2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumToIClassBorder1 parent) {
        this(_io, _parent, null, parent);
    }

    public EnumToIClassBorder2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumToIClassBorder2 _root, EnumToIClassBorder1 parent) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        this.parent = parent;
    }
    public void _read() {
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
    }

    public void _check() {
        _dirty = false;
    }
    public Boolean isDog() {
        if (this.isDog != null)
            return this.isDog;
        this.isDog = parent().someDog().id() == 4;
        return this.isDog;
    }
    public void _invalidateIsDog() { this.isDog = null; }
    public EnumToIClassBorder1 parent() { return parent; }
    public void setParent(EnumToIClassBorder1 _v) { _dirty = true; parent = _v; }
    public EnumToIClassBorder2 _root() { return _root; }
    public void set_root(EnumToIClassBorder2 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Boolean isDog;
    private EnumToIClassBorder1 parent;
    private EnumToIClassBorder2 _root;
    private KaitaiStruct.ReadWrite _parent;
}
