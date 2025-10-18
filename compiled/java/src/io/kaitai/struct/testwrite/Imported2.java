// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class Imported2 extends KaitaiStruct.ReadWrite {
    public static Imported2 fromFile(String fileName) throws IOException {
        return new Imported2(new ByteBufferKaitaiStream(fileName));
    }
    public Imported2() {
        this(null, null, null);
    }

    public Imported2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Imported2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public Imported2(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Imported2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.one);
    }

    public void _check() {
        _dirty = false;
    }
    public int one() { return one; }
    public void setOne(int _v) { _dirty = true; one = _v; }
    public Imported2 _root() { return _root; }
    public void set_root(Imported2 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private int one;
    private Imported2 _root;
    private KaitaiStruct.ReadWrite _parent;
}
