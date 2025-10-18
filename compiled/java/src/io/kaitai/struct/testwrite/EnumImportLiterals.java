// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EnumImportLiterals extends KaitaiStruct.ReadWrite {
    public static EnumImportLiterals fromFile(String fileName) throws IOException {
        return new EnumImportLiterals(new ByteBufferKaitaiStream(fileName));
    }
    public EnumImportLiterals() {
        this(null, null, null);
    }

    public EnumImportLiterals(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumImportLiterals(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumImportLiterals(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumImportLiterals _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
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
    public Boolean pet1Eq() {
        if (this.pet1Eq != null)
            return this.pet1Eq;
        this.pet1Eq = (true ? Enum0.Animal.CHICKEN : Enum0.Animal.DOG) == Enum0.Animal.CHICKEN;
        return this.pet1Eq;
    }
    public void _invalidatePet1Eq() { this.pet1Eq = null; }
    public Integer pet1ToI() {
        if (this.pet1ToI != null)
            return this.pet1ToI;
        this.pet1ToI = ((Number) (Enum0.Animal.CAT.id())).intValue();
        return this.pet1ToI;
    }
    public void _invalidatePet1ToI() { this.pet1ToI = null; }
    public EnumDeep.Container1.Container2.Animal pet2() {
        if (this.pet2 != null)
            return this.pet2;
        this.pet2 = EnumDeep.Container1.Container2.Animal.HARE;
        return this.pet2;
    }
    public void _invalidatePet2() { this.pet2 = null; }
    public EnumImportLiterals _root() { return _root; }
    public void set_root(EnumImportLiterals _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Boolean pet1Eq;
    private Integer pet1ToI;
    private EnumDeep.Container1.Container2.Animal pet2;
    private EnumImportLiterals _root;
    private KaitaiStruct.ReadWrite _parent;
}
