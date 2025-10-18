// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BytesPadTermEqual extends KaitaiStruct {
    public static BytesPadTermEqual fromFile(String fileName) throws IOException {
        return new BytesPadTermEqual(new ByteBufferKaitaiStream(fileName));
    }

    public BytesPadTermEqual(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BytesPadTermEqual(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BytesPadTermEqual(KaitaiStream _io, KaitaiStruct _parent, BytesPadTermEqual _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.s1 = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false);
        this.s2 = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, true);
        this.s3 = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 43, false);
        this.s4 = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 46, true);
    }

    public void _fetchInstances() {
    }
    public byte[] s1() { return s1; }
    public byte[] s2() { return s2; }
    public byte[] s3() { return s3; }
    public byte[] s4() { return s4; }
    public BytesPadTermEqual _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private byte[] s1;
    private byte[] s2;
    private byte[] s3;
    private byte[] s4;
    private BytesPadTermEqual _root;
    private KaitaiStruct _parent;
}
