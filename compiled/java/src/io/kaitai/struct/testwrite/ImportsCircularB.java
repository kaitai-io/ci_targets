// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsCircularB extends KaitaiStruct.ReadWrite {
    public static ImportsCircularB fromFile(String fileName) throws IOException {
        return new ImportsCircularB(new ByteBufferKaitaiStream(fileName));
    }
    public ImportsCircularB() {
        this(null, null, null);
    }

    public ImportsCircularB(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsCircularB(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ImportsCircularB(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ImportsCircularB _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.initial = this._io.readU1();
        if (initial() == 65) {
            this.backRef = new ImportsCircularA(this._io);
            this.backRef._read();
        }
    }

    public void _fetchInstances() {
        if (initial() == 65) {
            this.backRef._fetchInstances();
        }
    }

    public void _write_Seq() {
        this._io.writeU1(this.initial);
        if (initial() == 65) {
            this.backRef._write_Seq(this._io);
        }
    }

    public void _check() {
        if (initial() == 65) {
        }
    }
    private int initial;
    private ImportsCircularA backRef;
    private ImportsCircularB _root;
    private KaitaiStruct.ReadWrite _parent;
    public int initial() { return initial; }
    public void setInitial(int _v) { initial = _v; }
    public ImportsCircularA backRef() { return backRef; }
    public void setBackRef(ImportsCircularA _v) { backRef = _v; }
    public ImportsCircularB _root() { return _root; }
    public void set_root(ImportsCircularB _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
