// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EnumImportSeq extends KaitaiStruct {
    public static EnumImportSeq fromFile(String fileName) throws IOException {
        return new EnumImportSeq(new ByteBufferKaitaiStream(fileName));
    }

    public EnumImportSeq(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EnumImportSeq(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EnumImportSeq(KaitaiStream _io, KaitaiStruct _parent, EnumImportSeq _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.pet1 = Enum0.Animal.byId(this._io.readU4le());
        this.pet2 = EnumDeep.Container1.Container2.Animal.byId(this._io.readU4le());
    }

    public void _fetchInstances() {
    }
    public Enum0.Animal pet1() { return pet1; }
    public EnumDeep.Container1.Container2.Animal pet2() { return pet2; }
    public EnumImportSeq _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Enum0.Animal pet1;
    private EnumDeep.Container1.Container2.Animal pet2;
    private EnumImportSeq _root;
    private KaitaiStruct _parent;
}
