// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.List;

public class ParamsDefArrayUsertypeImported extends KaitaiStruct.ReadWrite {
    public ParamsDefArrayUsertypeImported(List<HelloWorld> hwsParam) {
        this(null, null, null, hwsParam);
    }

    public ParamsDefArrayUsertypeImported(KaitaiStream _io, List<HelloWorld> hwsParam) {
        this(_io, null, null, hwsParam);
    }

    public ParamsDefArrayUsertypeImported(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, List<HelloWorld> hwsParam) {
        this(_io, _parent, null, hwsParam);
    }

    public ParamsDefArrayUsertypeImported(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsDefArrayUsertypeImported _root, List<HelloWorld> hwsParam) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        this.hwsParam = hwsParam;
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
    private Integer hw0One;
    public Integer hw0One() {
        if (this.hw0One != null)
            return this.hw0One;
        this.hw0One = ((Number) (hwsParam().get(((int) 0)).one())).intValue();
        return this.hw0One;
    }
    public void _invalidateHw0One() { this.hw0One = null; }
    private Integer hw1One;
    public Integer hw1One() {
        if (this.hw1One != null)
            return this.hw1One;
        this.hw1One = ((Number) (hwsParam().get(((int) 1)).one())).intValue();
        return this.hw1One;
    }
    public void _invalidateHw1One() { this.hw1One = null; }
    private List<HelloWorld> hwsParam;
    private ParamsDefArrayUsertypeImported _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<HelloWorld> hwsParam() { return hwsParam; }
    public void setHwsParam(List<HelloWorld> _v) { _dirty = true; hwsParam = _v; }
    public ParamsDefArrayUsertypeImported _root() { return _root; }
    public void set_root(ParamsDefArrayUsertypeImported _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
