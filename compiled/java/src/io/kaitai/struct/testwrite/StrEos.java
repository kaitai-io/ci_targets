// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class StrEos extends KaitaiStruct.ReadWrite {
    public static StrEos fromFile(String fileName) throws IOException {
        return new StrEos(new ByteBufferKaitaiStream(fileName));
    }
    public StrEos() {
        this(null, null, null);
    }

    public StrEos(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEos(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public StrEos(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, StrEos _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.str = new String(this._io.readBytesFull(), StandardCharsets.UTF_8);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes((this.str).getBytes(Charset.forName("UTF-8")));
        if (!(this._io.isEof()))
            throw new ConsistencyError("str", this._io.size() - this._io.pos(), 0);
    }

    public void _check() {
        _dirty = false;
    }
    private String str;
    private StrEos _root;
    private KaitaiStruct.ReadWrite _parent;
    public String str() { return str; }
    public void setStr(String _v) { _dirty = true; str = _v; }
    public StrEos _root() { return _root; }
    public void set_root(StrEos _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
