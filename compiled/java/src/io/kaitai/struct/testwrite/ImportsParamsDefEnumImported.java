// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ImportsParamsDefEnumImported extends KaitaiStruct.ReadWrite {
    public static ImportsParamsDefEnumImported fromFile(String fileName) throws IOException {
        return new ImportsParamsDefEnumImported(new ByteBufferKaitaiStream(fileName));
    }
    public ImportsParamsDefEnumImported() {
        this(null, null, null);
    }

    public ImportsParamsDefEnumImported(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsParamsDefEnumImported(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ImportsParamsDefEnumImported(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ImportsParamsDefEnumImported _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = new EnumImportSeq(this._io);
        this.one._read();
        this.two = new ParamsDefEnumImported(this._io, one().pet1(), one().pet2());
        this.two._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.one._fetchInstances();
        this.two._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.one._write_Seq(this._io);
        this.two._write_Seq(this._io);
    }

    public void _check() {
        if (this.two.pet1Param() != one().pet1())
            throw new ConsistencyError("two", one().pet1(), this.two.pet1Param());
        if (this.two.pet2Param() != one().pet2())
            throw new ConsistencyError("two", one().pet2(), this.two.pet2Param());
        _dirty = false;
    }
    public EnumImportSeq one() { return one; }
    public void setOne(EnumImportSeq _v) { _dirty = true; one = _v; }
    public ParamsDefEnumImported two() { return two; }
    public void setTwo(ParamsDefEnumImported _v) { _dirty = true; two = _v; }
    public ImportsParamsDefEnumImported _root() { return _root; }
    public void set_root(ImportsParamsDefEnumImported _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private EnumImportSeq one;
    private ParamsDefEnumImported two;
    private ImportsParamsDefEnumImported _root;
    private KaitaiStruct.ReadWrite _parent;
}
