// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportedAndRel extends KaitaiStruct.ReadWrite {
    public static ImportedAndRel fromFile(String fileName) throws IOException {
        return new ImportedAndRel(new ByteBufferKaitaiStream(fileName));
    }
    public ImportedAndRel() {
        this(null, null, null);
    }

    public ImportedAndRel(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportedAndRel(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ImportedAndRel(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ImportedAndRel _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
        this.two = new ImportedRoot(this._io);
        this.two._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.two._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.one);
        this.two._write_Seq(this._io);
    }

    public void _check() {
        _dirty = false;
    }
    public int one() { return one; }
    public void setOne(int _v) { _dirty = true; one = _v; }
    public ImportedRoot two() { return two; }
    public void setTwo(ImportedRoot _v) { _dirty = true; two = _v; }
    public ImportedAndRel _root() { return _root; }
    public void set_root(ImportedAndRel _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private int one;
    private ImportedRoot two;
    private ImportedAndRel _root;
    private KaitaiStruct.ReadWrite _parent;
}
