// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsShiftByB64Le extends KaitaiStruct {
    public static BitsShiftByB64Le fromFile(String fileName) throws IOException {
        return new BitsShiftByB64Le(new ByteBufferKaitaiStream(fileName));
    }

    public BitsShiftByB64Le(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsShiftByB64Le(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BitsShiftByB64Le(KaitaiStream _io, KaitaiStruct _parent, BitsShiftByB64Le _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.a = this._io.readBitsIntLe(64);
        this.b = this._io.readBitsIntLe(8);
    }

    public void _fetchInstances() {
    }
    private long a;
    private long b;
    private BitsShiftByB64Le _root;
    private KaitaiStruct _parent;
    public long a() { return a; }
    public long b() { return b; }
    public BitsShiftByB64Le _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
