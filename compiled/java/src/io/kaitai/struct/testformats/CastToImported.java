// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class CastToImported extends KaitaiStruct {
    public static CastToImported fromFile(String fileName) throws IOException {
        return new CastToImported(new ByteBufferKaitaiStream(fileName));
    }

    public CastToImported(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CastToImported(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public CastToImported(KaitaiStream _io, KaitaiStruct _parent, CastToImported _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = new HelloWorld(this._io);
    }
    private HelloWorld oneCasted;
    public HelloWorld oneCasted() {
        if (this.oneCasted != null)
            return this.oneCasted;
        this.oneCasted = ((HelloWorld) (one()));
        return this.oneCasted;
    }
    private HelloWorld one;
    private CastToImported _root;
    private KaitaiStruct _parent;
    public HelloWorld one() { return one; }
    public CastToImported _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
