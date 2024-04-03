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
    private Boolean pet1Eq;
    public Boolean pet1Eq() {
        if (this.pet1Eq != null)
            return this.pet1Eq;
        boolean _tmp = (boolean) ((true ? Enum0.Animal.CHICKEN : Enum0.Animal.DOG) == Enum0.Animal.CHICKEN);
        this.pet1Eq = _tmp;
        return this.pet1Eq;
    }
    private Integer pet1ToI;
    public Integer pet1ToI() {
        if (this.pet1ToI != null)
            return this.pet1ToI;
        int _tmp = (int) (Enum0.Animal.CAT.id());
        this.pet1ToI = _tmp;
        return this.pet1ToI;
    }
    private Animal pet2;
    public Animal pet2() {
        if (this.pet2 != null)
            return this.pet2;
        this.pet2 = EnumDeep.Container1.Container2.Animal.HARE;
        return this.pet2;
    }
    private EnumImportLiterals _root;
    private KaitaiStruct _parent;
    public EnumImportLiterals _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
