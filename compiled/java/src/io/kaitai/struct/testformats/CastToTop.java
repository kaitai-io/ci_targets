// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class CastToTop extends KaitaiStruct {
    public static CastToTop fromFile(String fileName) throws IOException {
        return new CastToTop(new ByteBufferKaitaiStream(fileName));
    }

    public CastToTop(KaitaiStream _io) {
        this(_io, null, null);
    }

    public CastToTop(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public CastToTop(KaitaiStream _io, KaitaiStruct _parent, CastToTop _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.code = this._io.readU1();
    }

    public void _fetchInstances() {
        header();
        if (this.header != null) {
            this.header._fetchInstances();
        }
    }
    public CastToTop header() {
        if (this.header != null)
            return this.header;
        long _pos = this._io.pos();
        this._io.seek(1);
        this.header = new CastToTop(this._io, this, _root);
        this._io.seek(_pos);
        return this.header;
    }
    public CastToTop headerCasted() {
        if (this.headerCasted != null)
            return this.headerCasted;
        this.headerCasted = ((CastToTop) (header()));
        return this.headerCasted;
    }
    public int code() { return code; }
    public CastToTop _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private CastToTop header;
    private CastToTop headerCasted;
    private int code;
    private CastToTop _root;
    private KaitaiStruct _parent;
}
