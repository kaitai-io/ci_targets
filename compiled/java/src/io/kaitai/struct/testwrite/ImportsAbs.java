// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ImportsAbs extends KaitaiStruct.ReadWrite {
    public static ImportsAbs fromFile(String fileName) throws IOException {
        return new ImportsAbs(new ByteBufferKaitaiStream(fileName));
    }
    public ImportsAbs() {
        this(null, null, null);
    }

    public ImportsAbs(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsAbs(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ImportsAbs(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ImportsAbs _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.len = new VlqBase128Le(this._io);
        this.len._read();
        this.body = this._io.readBytes(len().value());
        _dirty = false;
    }

    public void _fetchInstances() {
        this.len._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.len._write_Seq(this._io);
        this._io.writeBytes(this.body);
    }

    public void _check() {
        if (this.body.length != len().value())
            throw new ConsistencyError("body", this.body.length, len().value());
        _dirty = false;
    }
    private VlqBase128Le len;
    private byte[] body;
    private ImportsAbs _root;
    private KaitaiStruct.ReadWrite _parent;
    public VlqBase128Le len() { return len; }
    public void setLen(VlqBase128Le _v) { _dirty = true; len = _v; }
    public byte[] body() { return body; }
    public void setBody(byte[] _v) { _dirty = true; body = _v; }
    public ImportsAbs _root() { return _root; }
    public void set_root(ImportsAbs _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
