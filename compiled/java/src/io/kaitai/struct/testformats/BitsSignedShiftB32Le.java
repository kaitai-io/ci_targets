// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsSignedShiftB32Le extends KaitaiStruct {
    public static BitsSignedShiftB32Le fromFile(String fileName) throws IOException {
        return new BitsSignedShiftB32Le(new ByteBufferKaitaiStream(fileName));
    }

    public BitsSignedShiftB32Le(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsSignedShiftB32Le(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BitsSignedShiftB32Le(KaitaiStream _io, KaitaiStruct _parent, BitsSignedShiftB32Le _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.a = this._io.readBitsIntLe(31);
        this.b = this._io.readBitsIntLe(9);
    }

    public void _fetchInstances() {
    }
    public long a() { return a; }
    public long b() { return b; }
    public BitsSignedShiftB32Le _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private long a;
    private long b;
    private BitsSignedShiftB32Le _root;
    private KaitaiStruct _parent;
}
