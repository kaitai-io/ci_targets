// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportedRoot extends KaitaiStruct.ReadWrite {
    public static ImportedRoot fromFile(String fileName) throws IOException {
        return new ImportedRoot(new ByteBufferKaitaiStream(fileName));
    }
    public ImportedRoot() {
        this(null, null, null);
    }

    public ImportedRoot(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportedRoot(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ImportedRoot(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ImportedRoot _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeU1(this.one);
    }

    public void _check() {
    }
    private int one;
    private ImportedRoot _root;
    private KaitaiStruct.ReadWrite _parent;
    public int one() { return one; }
    public void setOne(int _v) { one = _v; }
    public ImportedRoot _root() { return _root; }
    public void set_root(ImportedRoot _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
