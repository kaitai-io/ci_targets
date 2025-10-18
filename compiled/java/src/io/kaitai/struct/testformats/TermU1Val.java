// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class TermU1Val extends KaitaiStruct {
    public static TermU1Val fromFile(String fileName) throws IOException {
        return new TermU1Val(new ByteBufferKaitaiStream(fileName));
    }

    public TermU1Val(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermU1Val(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TermU1Val(KaitaiStream _io, KaitaiStruct _parent, TermU1Val _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readBytesTerm((byte) 227, false, false, true);
        this.bar = new String(this._io.readBytesTerm((byte) 171, true, true, true), StandardCharsets.UTF_8);
    }

    public void _fetchInstances() {
    }
    public byte[] foo() { return foo; }
    public String bar() { return bar; }
    public TermU1Val _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private byte[] foo;
    private String bar;
    private TermU1Val _root;
    private KaitaiStruct _parent;
}
