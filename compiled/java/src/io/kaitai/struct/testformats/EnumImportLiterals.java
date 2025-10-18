// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EnumImportLiterals extends KaitaiStruct {
    public static EnumImportLiterals fromFile(String fileName) throws IOException {
        return new EnumImportLiterals(new ByteBufferKaitaiStream(fileName));
    }

    public EnumImportLiterals(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumImportLiterals(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumImportLiterals(KaitaiStream _io, KaitaiStruct _parent, EnumImportLiterals _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }

    public void _fetchInstances() {
    }
    public Boolean pet1Eq() {
        if (this.pet1Eq != null)
            return this.pet1Eq;
        this.pet1Eq = (true ? Enum0.Animal.CHICKEN : Enum0.Animal.DOG) == Enum0.Animal.CHICKEN;
        return this.pet1Eq;
    }
    public Integer pet1ToI() {
        if (this.pet1ToI != null)
            return this.pet1ToI;
        this.pet1ToI = ((Number) (Enum0.Animal.CAT.id())).intValue();
        return this.pet1ToI;
    }
    public EnumDeep.Container1.Container2.Animal pet2() {
        if (this.pet2 != null)
            return this.pet2;
        this.pet2 = EnumDeep.Container1.Container2.Animal.HARE;
        return this.pet2;
    }
    public EnumImportLiterals _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Boolean pet1Eq;
    private Integer pet1ToI;
    private EnumDeep.Container1.Container2.Animal pet2;
    private EnumImportLiterals _root;
    private KaitaiStruct _parent;
}
