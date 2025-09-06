// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsCircularA extends KaitaiStruct.ReadWrite {
    public static ImportsCircularA fromFile(String fileName) throws IOException {
        return new ImportsCircularA(new ByteBufferKaitaiStream(fileName));
    }
    public ImportsCircularA() {
        this(null, null, null);
    }

    public ImportsCircularA(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsCircularA(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ImportsCircularA(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ImportsCircularA _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.code = this._io.readU1();
        this.two = new ImportsCircularB(this._io);
        this.two._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.two._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.code);
        this.two._write_Seq(this._io);
    }

    public void _check() {
        _dirty = false;
    }
    private int code;
    private ImportsCircularB two;
    private ImportsCircularA _root;
    private KaitaiStruct.ReadWrite _parent;
    public int code() { return code; }
    public void setCode(int _v) { _dirty = true; code = _v; }
    public ImportsCircularB two() { return two; }
    public void setTwo(ImportsCircularB _v) { _dirty = true; two = _v; }
    public ImportsCircularA _root() { return _root; }
    public void set_root(ImportsCircularA _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
