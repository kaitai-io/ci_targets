// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsRel1 extends KaitaiStruct {
    public static ImportsRel1 fromFile(String fileName) throws IOException {
        return new ImportsRel1(new ByteBufferKaitaiStream(fileName));
    }

    public ImportsRel1(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsRel1(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ImportsRel1(KaitaiStream _io, KaitaiStruct _parent, ImportsRel1 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readU1();
        this.two = new Imported1(this._io);
    }

    public void _fetchInstances() {
        this.two._fetchInstances();
    }
    private int one;
    private Imported1 two;
    private ImportsRel1 _root;
    private KaitaiStruct _parent;
    public int one() { return one; }
    public Imported1 two() { return two; }
    public ImportsRel1 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
