// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsCircularA extends KaitaiStruct {
    public static ImportsCircularA fromFile(String fileName) throws IOException {
        return new ImportsCircularA(new ByteBufferKaitaiStream(fileName));
    }

    public ImportsCircularA(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsCircularA(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ImportsCircularA(KaitaiStream _io, KaitaiStruct _parent, ImportsCircularA _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.code = this._io.readU1();
        this.two = new ImportsCircularB(this._io);
    }
    private int code;
    private ImportsCircularB two;
    private ImportsCircularA _root;
    private KaitaiStruct _parent;
    public int code() { return code; }
    public ImportsCircularB two() { return two; }
    public ImportsCircularA _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
