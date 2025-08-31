// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ParamsDefEnumImported extends KaitaiStruct {

    public ParamsDefEnumImported(KaitaiStream _io, Enum0.Animal pet1Param, EnumDeep.Container1.Container2.Animal pet2Param) {
        this(_io, null, null, pet1Param, pet2Param);
    }

    public ParamsDefEnumImported(KaitaiStream _io, KaitaiStruct _parent, Enum0.Animal pet1Param, EnumDeep.Container1.Container2.Animal pet2Param) {
        this(_io, _parent, null, pet1Param, pet2Param);
    }

    public ParamsDefEnumImported(KaitaiStream _io, KaitaiStruct _parent, ParamsDefEnumImported _root, Enum0.Animal pet1Param, EnumDeep.Container1.Container2.Animal pet2Param) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        this.pet1Param = pet1Param;
        this.pet2Param = pet2Param;
        _read();
    }
    private void _read() {
    }

    public void _fetchInstances() {
    }
    private Enum0.Animal pet1Param;
    private EnumDeep.Container1.Container2.Animal pet2Param;
    private ParamsDefEnumImported _root;
    private KaitaiStruct _parent;
    public Enum0.Animal pet1Param() { return pet1Param; }
    public EnumDeep.Container1.Container2.Animal pet2Param() { return pet2Param; }
    public ParamsDefEnumImported _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
