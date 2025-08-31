// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class Imports0 extends KaitaiStruct.ReadWrite {
    public static Imports0 fromFile(String fileName) throws IOException {
        return new Imports0(new ByteBufferKaitaiStream(fileName));
    }
    public Imports0() {
        this(null, null, null);
    }

    public Imports0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Imports0(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public Imports0(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, Imports0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.two = this._io.readU1();
        this.hw = new HelloWorld(this._io);
        this.hw._read();
    }

    public void _fetchInstances() {
        this.hw._fetchInstances();
    }

    public void _write_Seq() {
        this._io.writeU1(this.two);
        this.hw._write_Seq(this._io);
    }

    public void _check() {
    }
    private Integer hwOne;
    public Integer hwOne() {
        if (this.hwOne != null)
            return this.hwOne;
        this.hwOne = ((Number) (hw().one())).intValue();
        return this.hwOne;
    }
    public void _invalidateHwOne() { this.hwOne = null; }
    private int two;
    private HelloWorld hw;
    private Imports0 _root;
    private KaitaiStruct.ReadWrite _parent;
    public int two() { return two; }
    public void setTwo(int _v) { two = _v; }
    public HelloWorld hw() { return hw; }
    public void setHw(HelloWorld _v) { hw = _v; }
    public Imports0 _root() { return _root; }
    public void set_root(Imports0 _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
