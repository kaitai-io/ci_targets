// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsUnalignedB64Be extends KaitaiStruct {
    public static BitsUnalignedB64Be fromFile(String fileName) throws IOException {
        return new BitsUnalignedB64Be(new ByteBufferKaitaiStream(fileName));
    }

    public BitsUnalignedB64Be(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsUnalignedB64Be(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BitsUnalignedB64Be(KaitaiStream _io, KaitaiStruct _parent, BitsUnalignedB64Be _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.a = this._io.readBitsIntBe(1) != 0;
        this.b = this._io.readBitsIntBe(64);
        this.c = this._io.readBitsIntBe(7);
    }
    private boolean a;
    private long b;
    private long c;
    private BitsUnalignedB64Be _root;
    private KaitaiStruct _parent;
    public boolean a() { return a; }
    public long b() { return b; }
    public long c() { return c; }
    public BitsUnalignedB64Be _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
