// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsShiftByB32Le extends KaitaiStruct {
    public static BitsShiftByB32Le fromFile(String fileName) throws IOException {
        return new BitsShiftByB32Le(new ByteBufferKaitaiStream(fileName));
    }

    public BitsShiftByB32Le(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsShiftByB32Le(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BitsShiftByB32Le(KaitaiStream _io, KaitaiStruct _parent, BitsShiftByB32Le _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.a = this._io.readBitsIntLe(32);
        this.b = this._io.readBitsIntLe(8);
    }
    private long a;
    private long b;
    private BitsShiftByB32Le _root;
    private KaitaiStruct _parent;
    public long a() { return a; }
    public long b() { return b; }
    public BitsShiftByB32Le _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
