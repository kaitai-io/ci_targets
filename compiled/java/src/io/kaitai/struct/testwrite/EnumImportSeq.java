// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EnumImportSeq extends KaitaiStruct.ReadWrite {
    public static EnumImportSeq fromFile(String fileName) throws IOException {
        return new EnumImportSeq(new ByteBufferKaitaiStream(fileName));
    }
    public EnumImportSeq() {
        this(null, null, null);
    }

    public EnumImportSeq(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumImportSeq(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public EnumImportSeq(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, EnumImportSeq _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.pet1 = Enum0.Animal.byId(this._io.readU4le());
        this.pet2 = EnumDeep.Container1.Container2.Animal.byId(this._io.readU4le());
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeU4le(((Number) (this.pet1.id())).longValue());
        this._io.writeU4le(((Number) (this.pet2.id())).longValue());
    }

    public void _check() {
    }
    private Enum0.Animal pet1;
    private EnumDeep.Container1.Container2.Animal pet2;
    private EnumImportSeq _root;
    private KaitaiStruct.ReadWrite _parent;
    public Enum0.Animal pet1() { return pet1; }
    public void setPet1(Enum0.Animal _v) { pet1 = _v; }
    public EnumDeep.Container1.Container2.Animal pet2() { return pet2; }
    public void setPet2(EnumDeep.Container1.Container2.Animal _v) { pet2 = _v; }
    public EnumImportSeq _root() { return _root; }
    public void set_root(EnumImportSeq _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
