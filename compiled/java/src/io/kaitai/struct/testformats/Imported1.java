// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class Imported1 extends KaitaiStruct {
    public static Imported1 fromFile(String fileName) throws IOException {
        return new Imported1(new ByteBufferKaitaiStream(fileName));
    }

    public Imported1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Imported1(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Imported1(KaitaiStream _io, KaitaiStruct _parent, Imported1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readU1();
        this.two = new Imported2(this._io);
    }

    public void _fetchInstances() {
        this.two._fetchInstances();
    }
    public int one() { return one; }
    public Imported2 two() { return two; }
    public Imported1 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private int one;
    private Imported2 two;
    private Imported1 _root;
    private KaitaiStruct _parent;
}
