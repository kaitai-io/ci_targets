// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class Imports0 extends KaitaiStruct {
    public static Imports0 fromFile(String fileName) throws IOException {
        return new Imports0(new ByteBufferKaitaiStream(fileName));
    }

    public Imports0(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Imports0(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Imports0(KaitaiStream _io, KaitaiStruct _parent, Imports0 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.two = this._io.readU1();
        this.hw = new HelloWorld(this._io);
    }

    public void _fetchInstances() {
        this.hw._fetchInstances();
    }
    public Integer hwOne() {
        if (this.hwOne != null)
            return this.hwOne;
        this.hwOne = ((Number) (hw().one())).intValue();
        return this.hwOne;
    }
    public int two() { return two; }
    public HelloWorld hw() { return hw; }
    public Imports0 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Integer hwOne;
    private int two;
    private HelloWorld hw;
    private Imports0 _root;
    private KaitaiStruct _parent;
}
