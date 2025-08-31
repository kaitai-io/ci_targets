// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EofExceptionU4 extends KaitaiStruct {
    public static EofExceptionU4 fromFile(String fileName) throws IOException {
        return new EofExceptionU4(new ByteBufferKaitaiStream(fileName));
    }

    public EofExceptionU4(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EofExceptionU4(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EofExceptionU4(KaitaiStream _io, KaitaiStruct _parent, EofExceptionU4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.prebuf = this._io.readBytes(9);
        this.failInt = this._io.readU4le();
    }

    public void _fetchInstances() {
    }
    private byte[] prebuf;
    private long failInt;
    private EofExceptionU4 _root;
    private KaitaiStruct _parent;
    public byte[] prebuf() { return prebuf; }
    public long failInt() { return failInt; }
    public EofExceptionU4 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
