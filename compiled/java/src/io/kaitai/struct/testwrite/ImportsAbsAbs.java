// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsAbsAbs extends KaitaiStruct.ReadWrite {
    public static ImportsAbsAbs fromFile(String fileName) throws IOException {
        return new ImportsAbsAbs(new ByteBufferKaitaiStream(fileName));
    }
    public ImportsAbsAbs() {
        this(null, null, null);
    }

    public ImportsAbsAbs(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsAbsAbs(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ImportsAbsAbs(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ImportsAbsAbs _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
        this.two = new ImportedAndAbs(this._io);
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
    private ImportedAndAbs two;
    private ImportsAbsAbs _root;
    private KaitaiStruct.ReadWrite _parent;
    public int one() { return one; }
    public void setOne(int _v) { _dirty = true; one = _v; }
    public ImportedAndAbs two() { return two; }
    public void setTwo(ImportedAndAbs _v) { _dirty = true; two = _v; }
    public ImportsAbsAbs _root() { return _root; }
    public void set_root(ImportsAbsAbs _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
