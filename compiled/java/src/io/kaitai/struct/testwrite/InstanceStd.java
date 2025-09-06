// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;
import java.nio.charset.StandardCharsets;

public class InstanceStd extends KaitaiStruct.ReadWrite {
    public static InstanceStd fromFile(String fileName) throws IOException {
        return new InstanceStd(new ByteBufferKaitaiStream(fileName));
    }
    public InstanceStd() {
        this(null, null, null);
    }

    public InstanceStd(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceStd(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public InstanceStd(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, InstanceStd _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        _dirty = false;
    }

    public void _fetchInstances() {
        header();
        if (this.header != null) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        _shouldWriteHeader = _enabledHeader;
    }

    public void _check() {
        if (_enabledHeader) {
            if ((this.header).getBytes(Charset.forName("ASCII")).length != 5)
                throw new ConsistencyError("header", (this.header).getBytes(Charset.forName("ASCII")).length, 5);
        }
        _dirty = false;
    }
    private String header;
    private boolean _shouldWriteHeader = false;
    private boolean _enabledHeader = true;
    public String header() {
        if (_shouldWriteHeader)
            _writeHeader();
        if (this.header != null)
            return this.header;
        if (!_enabledHeader)
            return null;
        long _pos = this._io.pos();
        this._io.seek(2);
        this.header = new String(this._io.readBytes(5), StandardCharsets.US_ASCII);
        this._io.seek(_pos);
        return this.header;
    }
    public void setHeader(String _v) { _dirty = true; header = _v; }
    public void setHeader_Enabled(boolean _v) { _dirty = true; _enabledHeader = _v; }

    private void _writeHeader() {
        _shouldWriteHeader = false;
        long _pos = this._io.pos();
        this._io.seek(2);
        this._io.writeBytes((this.header).getBytes(Charset.forName("ASCII")));
        this._io.seek(_pos);
    }
    private InstanceStd _root;
    private KaitaiStruct.ReadWrite _parent;
    public InstanceStd _root() { return _root; }
    public void set_root(InstanceStd _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
