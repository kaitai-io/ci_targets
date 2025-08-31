// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class TermBytes3 extends KaitaiStruct {
    public static TermBytes3 fromFile(String fileName) throws IOException {
        return new TermBytes3(new ByteBufferKaitaiStream(fileName));
    }

    public TermBytes3(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermBytes3(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TermBytes3(KaitaiStream _io, KaitaiStruct _parent, TermBytes3 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.s1 = this._io.readBytesTerm((byte) 124, false, false, true);
        this.s2 = this._io.readBytesTerm((byte) 64, false, false, true);
        this.s3 = this._io.readBytesTerm((byte) 64, false, true, true);
    }

    public void _fetchInstances() {
    }
    private byte[] s1;
    private byte[] s2;
    private byte[] s3;
    private TermBytes3 _root;
    private KaitaiStruct _parent;
    public byte[] s1() { return s1; }
    public byte[] s2() { return s2; }
    public byte[] s3() { return s3; }
    public TermBytes3 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
