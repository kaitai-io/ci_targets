// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

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
    }

    public void _fetchInstances() {
        header();
    }

    public void _write_Seq() {
        _writeHeader = _toWriteHeader;
    }

    public void _check() {
    }
    private String header;
    private boolean _writeHeader = false;
    private boolean _toWriteHeader = true;
    public String header() {
        if (_writeHeader)
            _writeHeader();
        if (this.header != null)
            return this.header;
        long _pos = this._io.pos();
        this._io.seek(2);
        this.header = new String(this._io.readBytes(5), StandardCharsets.US_ASCII);
        this._io.seek(_pos);
        return this.header;
    }
    public void setHeader(String _v) { header = _v; }
    public void setHeader_ToWrite(boolean _v) { _toWriteHeader = _v; }

    public void _writeHeader() {
        _writeHeader = false;
        long _pos = this._io.pos();
        this._io.seek(2);
        this._io.writeBytes((this.header).getBytes(Charset.forName("ASCII")));
        this._io.seek(_pos);
    }

    public void _checkHeader() {
        if ((this.header).getBytes(Charset.forName("ASCII")).length != 5)
            throw new ConsistencyError("header", (this.header).getBytes(Charset.forName("ASCII")).length, 5);
    }
    private InstanceStd _root;
    private KaitaiStruct.ReadWrite _parent;
    public InstanceStd _root() { return _root; }
    public void set_root(InstanceStd _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
