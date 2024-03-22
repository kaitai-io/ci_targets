// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class ToStringCustom extends KaitaiStruct {
    public static ToStringCustom fromFile(String fileName) throws IOException {
        return new ToStringCustom(new ByteBufferKaitaiStream(fileName));
    }

    public ToStringCustom(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ToStringCustom(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ToStringCustom(KaitaiStream _io, KaitaiStruct _parent, ToStringCustom _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.s1 = new String(this._io.readBytesTerm((byte) 124, false, true, true), StandardCharsets.UTF_8);
        this.s2 = new String(this._io.readBytesTerm((byte) 124, false, true, true), StandardCharsets.UTF_8);
    }
    private String s1;
    private String s2;
    private ToStringCustom _root;
    private KaitaiStruct _parent;
    public String s1() { return s1; }
    public String s2() { return s2; }
    public ToStringCustom _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }

    @Override
    public String toString() {
        return (("s1 = " + s1()) + ", s2 = ") + s2();
    }
}
