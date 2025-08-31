// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BitsSignedResB32Be extends KaitaiStruct {
    public static BitsSignedResB32Be fromFile(String fileName) throws IOException {
        return new BitsSignedResB32Be(new ByteBufferKaitaiStream(fileName));
    }

    public BitsSignedResB32Be(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BitsSignedResB32Be(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BitsSignedResB32Be(KaitaiStream _io, KaitaiStruct _parent, BitsSignedResB32Be _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.a = this._io.readBitsIntBe(32);
    }

    public void _fetchInstances() {
    }
    private long a;
    private BitsSignedResB32Be _root;
    private KaitaiStruct _parent;
    public long a() { return a; }
    public BitsSignedResB32Be _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
