// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class TermBytes extends KaitaiStruct {
    public static TermBytes fromFile(String fileName) throws IOException {
        return new TermBytes(new ByteBufferKaitaiStream(fileName));
    }

    public TermBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermBytes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TermBytes(KaitaiStream _io, KaitaiStruct _parent, TermBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.s1 = this._io.readBytesTerm((byte) 124, false, true, true);
        this.s2 = this._io.readBytesTerm((byte) 124, false, false, true);
        this.s3 = this._io.readBytesTerm((byte) 64, true, true, true);
    }
    private byte[] s1;
    private byte[] s2;
    private byte[] s3;
    private TermBytes _root;
    private KaitaiStruct _parent;
    public byte[] s1() { return s1; }
    public byte[] s2() { return s2; }
    public byte[] s3() { return s3; }
    public TermBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
