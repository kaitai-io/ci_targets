// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ParamsDefEnumImported extends KaitaiStruct.ReadWrite {
    public ParamsDefEnumImported(Enum0.Animal pet1Param, EnumDeep.Container1.Container2.Animal pet2Param) {
        this(null, null, null, pet1Param, pet2Param);
    }

    public ParamsDefEnumImported(KaitaiStream _io, Enum0.Animal pet1Param, EnumDeep.Container1.Container2.Animal pet2Param) {
        this(_io, null, null, pet1Param, pet2Param);
    }

    public ParamsDefEnumImported(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Enum0.Animal pet1Param, EnumDeep.Container1.Container2.Animal pet2Param) {
        this(_io, _parent, null, pet1Param, pet2Param);
    }

    public ParamsDefEnumImported(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ParamsDefEnumImported _root, Enum0.Animal pet1Param, EnumDeep.Container1.Container2.Animal pet2Param) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        this.pet1Param = pet1Param;
        this.pet2Param = pet2Param;
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
    public Enum0.Animal pet1Param() { return pet1Param; }
    public void setPet1Param(Enum0.Animal _v) { _dirty = true; pet1Param = _v; }
    public EnumDeep.Container1.Container2.Animal pet2Param() { return pet2Param; }
    public void setPet2Param(EnumDeep.Container1.Container2.Animal _v) { _dirty = true; pet2Param = _v; }
    public ParamsDefEnumImported _root() { return _root; }
    public void set_root(ParamsDefEnumImported _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Enum0.Animal pet1Param;
    private EnumDeep.Container1.Container2.Animal pet2Param;
    private ParamsDefEnumImported _root;
    private KaitaiStruct.ReadWrite _parent;
}
