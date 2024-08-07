// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class TermStrzUtf16V2 extends KaitaiStruct {
    public static TermStrzUtf16V2 fromFile(String fileName) throws IOException {
        return new TermStrzUtf16V2(new ByteBufferKaitaiStream(fileName));
    }

    public TermStrzUtf16V2(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermStrzUtf16V2(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TermStrzUtf16V2(KaitaiStream _io, KaitaiStruct _parent, TermStrzUtf16V2 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.s1 = new String(this._io.readBytesTermMulti(new byte[] { 0, 0 }, false, true, true), StandardCharsets.UTF_16LE);
        this.s2 = new String(this._io.readBytesTermMulti(new byte[] { 0, 0 }, true, true, true), StandardCharsets.UTF_16LE);
        this.s3 = new String(this._io.readBytesTermMulti(new byte[] { 0, 0 }, false, false, true), StandardCharsets.UTF_16LE);
    }
    private String s1;
    private String s2;
    private String s3;
    private TermStrzUtf16V2 _root;
    private KaitaiStruct _parent;
    public String s1() { return s1; }
    public String s2() { return s2; }
    public String s3() { return s3; }
    public TermStrzUtf16V2 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
