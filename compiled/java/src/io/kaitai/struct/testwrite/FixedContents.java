// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;
import io.kaitai.struct.ConsistencyError;

public class FixedContents extends KaitaiStruct.ReadWrite {
    public static FixedContents fromFile(String fileName) throws IOException {
        return new FixedContents(new ByteBufferKaitaiStream(fileName));
    }
    public FixedContents() {
        this(null, null, null);
    }

    public FixedContents(KaitaiStream _io) {
        this(_io, null, null);
    }

    public FixedContents(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public FixedContents(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, FixedContents _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.normal = this._io.readBytes(6);
        if (!(Arrays.equals(this.normal, new byte[] { 80, 65, 67, 75, 45, 49 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, this.normal, this._io, "/seq/0");
        }
        this.highBit8 = this._io.readBytes(2);
        if (!(Arrays.equals(this.highBit8, new byte[] { -1, -1 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { -1, -1 }, this.highBit8, this._io, "/seq/1");
        }
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes(this.normal);
        this._io.writeBytes(this.highBit8);
    }

    public void _check() {
        if (this.normal.length != 6)
            throw new ConsistencyError("normal", 6, this.normal.length);
        if (!(Arrays.equals(this.normal, new byte[] { 80, 65, 67, 75, 45, 49 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, this.normal, null, "/seq/0");
        }
        if (this.highBit8.length != 2)
            throw new ConsistencyError("high_bit_8", 2, this.highBit8.length);
        if (!(Arrays.equals(this.highBit8, new byte[] { -1, -1 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { -1, -1 }, this.highBit8, null, "/seq/1");
        }
        _dirty = false;
    }
    private byte[] normal;
    private byte[] highBit8;
    private FixedContents _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] normal() { return normal; }
    public void setNormal(byte[] _v) { _dirty = true; normal = _v; }
    public byte[] highBit8() { return highBit8; }
    public void setHighBit8(byte[] _v) { _dirty = true; highBit8 = _v; }
    public FixedContents _root() { return _root; }
    public void set_root(FixedContents _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
