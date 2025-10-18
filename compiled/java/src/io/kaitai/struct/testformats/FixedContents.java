// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Arrays;

public class FixedContents extends KaitaiStruct {
    public static FixedContents fromFile(String fileName) throws IOException {
        return new FixedContents(new ByteBufferKaitaiStream(fileName));
    }

    public FixedContents(KaitaiStream _io) {
        this(_io, null, null);
    }

    public FixedContents(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public FixedContents(KaitaiStream _io, KaitaiStruct _parent, FixedContents _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.normal = this._io.readBytes(6);
        if (!(Arrays.equals(this.normal, new byte[] { 80, 65, 67, 75, 45, 49 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 80, 65, 67, 75, 45, 49 }, this.normal, this._io, "/seq/0");
        }
        this.highBit8 = this._io.readBytes(2);
        if (!(Arrays.equals(this.highBit8, new byte[] { -1, -1 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { -1, -1 }, this.highBit8, this._io, "/seq/1");
        }
    }

    public void _fetchInstances() {
    }
    public byte[] normal() { return normal; }
    public byte[] highBit8() { return highBit8; }
    public FixedContents _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private byte[] normal;
    private byte[] highBit8;
    private FixedContents _root;
    private KaitaiStruct _parent;
}
