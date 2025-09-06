// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportedAndAbs extends KaitaiStruct.ReadWrite {
    public static ImportedAndAbs fromFile(String fileName) throws IOException {
        return new ImportedAndAbs(new ByteBufferKaitaiStream(fileName));
    }
    public ImportedAndAbs() {
        this(null, null, null);
    }

    public ImportedAndAbs(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportedAndAbs(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ImportedAndAbs(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ImportedAndAbs _root) {
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
    private int one;
    private ImportedRoot two;
    private ImportedAndAbs _root;
    private KaitaiStruct.ReadWrite _parent;
    public int one() { return one; }
    public void setOne(int _v) { _dirty = true; one = _v; }
    public ImportedRoot two() { return two; }
    public void setTwo(ImportedRoot _v) { _dirty = true; two = _v; }
    public ImportedAndAbs _root() { return _root; }
    public void set_root(ImportedAndAbs _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
