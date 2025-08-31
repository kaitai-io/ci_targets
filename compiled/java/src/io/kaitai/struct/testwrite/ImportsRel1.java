// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsRel1 extends KaitaiStruct.ReadWrite {
    public static ImportsRel1 fromFile(String fileName) throws IOException {
        return new ImportsRel1(new ByteBufferKaitaiStream(fileName));
    }
    public ImportsRel1() {
        this(null, null, null);
    }

    public ImportsRel1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsRel1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ImportsRel1(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ImportsRel1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = this._io.readU1();
        this.two = new Imported1(this._io);
        this.two._read();
    }

    public void _fetchInstances() {
        this.two._fetchInstances();
    }

    public void _write_Seq() {
        this._io.writeU1(this.one);
        this.two._write_Seq(this._io);
    }

    public void _check() {
    }
    private int one;
    private Imported1 two;
    private ImportsRel1 _root;
    private KaitaiStruct.ReadWrite _parent;
    public int one() { return one; }
    public void setOne(int _v) { one = _v; }
    public Imported1 two() { return two; }
    public void setTwo(Imported1 _v) { two = _v; }
    public ImportsRel1 _root() { return _root; }
    public void set_root(ImportsRel1 _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
