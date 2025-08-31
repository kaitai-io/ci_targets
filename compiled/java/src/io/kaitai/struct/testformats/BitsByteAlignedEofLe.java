// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsByteAlignedEofLe extends KaitaiStruct {
    public static BitsByteAlignedEofLe fromFile(String fileName) throws IOException {
        return new BitsByteAlignedEofLe(new ByteBufferKaitaiStream(fileName));
    }

    public BitsByteAlignedEofLe(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsByteAlignedEofLe(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BitsByteAlignedEofLe(KaitaiStream _io, KaitaiStruct _parent, BitsByteAlignedEofLe _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.prebuf = this._io.readBytes(8);
        this.bits = this._io.readBitsIntLe(31);
    }

    public void _fetchInstances() {
    }
    private byte[] prebuf;
    private long bits;
    private BitsByteAlignedEofLe _root;
    private KaitaiStruct _parent;
    public byte[] prebuf() { return prebuf; }
    public long bits() { return bits; }
    public BitsByteAlignedEofLe _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
