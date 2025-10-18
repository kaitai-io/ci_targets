// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class ParamsDef extends KaitaiStruct {

    public ParamsDef(KaitaiStream _io, long len, boolean hasTrailer) {
        this(_io, null, null, len, hasTrailer);
    }

    public ParamsDef(KaitaiStream _io, KaitaiStruct _parent, long len, boolean hasTrailer) {
        this(_io, _parent, null, len, hasTrailer);
    }

    public ParamsDef(KaitaiStream _io, KaitaiStruct _parent, ParamsDef _root, long len, boolean hasTrailer) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        this.len = len;
        this.hasTrailer = hasTrailer;
        _read();
    }
    private void _read() {
        this.buf = new String(this._io.readBytes(len()), StandardCharsets.UTF_8);
        if (hasTrailer()) {
            this.trailer = this._io.readU1();
        }
    }

    public void _fetchInstances() {
        if (hasTrailer()) {
        }
    }
    public String buf() { return buf; }
    public Integer trailer() { return trailer; }
    public long len() { return len; }
    public boolean hasTrailer() { return hasTrailer; }
    public ParamsDef _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private String buf;
    private Integer trailer;
    private long len;
    private boolean hasTrailer;
    private ParamsDef _root;
    private KaitaiStruct _parent;
}
