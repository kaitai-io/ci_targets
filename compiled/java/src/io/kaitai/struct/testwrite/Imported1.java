// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class Imported1 extends KaitaiStruct.ReadWrite {
    public static Imported1 fromFile(String fileName) throws IOException {
        return new Imported1(new ByteBufferKaitaiStream(fileName));
    }
    public Imported1() {
        this(null, null, null);
    }

    public Imported1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Imported1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public Imported1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Imported1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
        this.two = new Imported2(this._io);
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
    public Imported2 two() { return two; }
    public void setTwo(Imported2 _v) { _dirty = true; two = _v; }
    public Imported1 _root() { return _root; }
    public void set_root(Imported1 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private int one;
    private Imported2 two;
    private Imported1 _root;
    private KaitaiStruct.ReadWrite _parent;
}
