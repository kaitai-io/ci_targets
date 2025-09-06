// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class BitsByteAlignedEofLe extends KaitaiStruct.ReadWrite {
    public static BitsByteAlignedEofLe fromFile(String fileName) throws IOException {
        return new BitsByteAlignedEofLe(new ByteBufferKaitaiStream(fileName));
    }
    public BitsByteAlignedEofLe() {
        this(null, null, null);
    }

    public BitsByteAlignedEofLe(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsByteAlignedEofLe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BitsByteAlignedEofLe(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BitsByteAlignedEofLe _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.prebuf = this._io.readBytes(8);
        this.bits = this._io.readBitsIntLe(31);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes(this.prebuf);
        this._io.writeBitsIntLe(31, this.bits);
    }

    public void _check() {
        if (this.prebuf.length != 8)
            throw new ConsistencyError("prebuf", this.prebuf.length, 8);
        _dirty = false;
    }
    private byte[] prebuf;
    private long bits;
    private BitsByteAlignedEofLe _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] prebuf() { return prebuf; }
    public void setPrebuf(byte[] _v) { _dirty = true; prebuf = _v; }
    public long bits() { return bits; }
    public void setBits(long _v) { _dirty = true; bits = _v; }
    public BitsByteAlignedEofLe _root() { return _root; }
    public void set_root(BitsByteAlignedEofLe _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
