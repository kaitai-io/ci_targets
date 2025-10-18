// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class EofExceptionBytes extends KaitaiStruct {
    public static EofExceptionBytes fromFile(String fileName) throws IOException {
        return new EofExceptionBytes(new ByteBufferKaitaiStream(fileName));
    }

    public EofExceptionBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public EofExceptionBytes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public EofExceptionBytes(KaitaiStream _io, KaitaiStruct _parent, EofExceptionBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.buf = this._io.readBytes(13);
    }

    public void _fetchInstances() {
    }
    public byte[] buf() { return buf; }
    public EofExceptionBytes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private byte[] buf;
    private EofExceptionBytes _root;
    private KaitaiStruct _parent;
}
