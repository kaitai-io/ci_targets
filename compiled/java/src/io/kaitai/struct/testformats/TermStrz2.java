// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class TermStrz2 extends KaitaiStruct {
    public static TermStrz2 fromFile(String fileName) throws IOException {
        return new TermStrz2(new ByteBufferKaitaiStream(fileName));
    }

    public TermStrz2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermStrz2(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TermStrz2(KaitaiStream _io, KaitaiStruct _parent, TermStrz2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.s1 = new String(this._io.readBytesTerm((byte) 124, false, true, true), StandardCharsets.UTF_8);
        this.s2 = new String(this._io.readBytesTerm((byte) 124, true, true, true), StandardCharsets.UTF_8);
        this.s3 = new String(this._io.readBytesTerm((byte) 64, false, false, true), StandardCharsets.UTF_8);
    }

    public void _fetchInstances() {
    }
    public String s1() { return s1; }
    public String s2() { return s2; }
    public String s3() { return s3; }
    public TermStrz2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private String s1;
    private String s2;
    private String s3;
    private TermStrz2 _root;
    private KaitaiStruct _parent;
}
