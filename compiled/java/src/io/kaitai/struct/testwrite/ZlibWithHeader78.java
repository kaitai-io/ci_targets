// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ZlibWithHeader78 extends KaitaiStruct.ReadWrite {
    public static ZlibWithHeader78 fromFile(String fileName) throws IOException {
        return new ZlibWithHeader78(new ByteBufferKaitaiStream(fileName));
    }
    public ZlibWithHeader78() {
        this(null, null, null);
    }

    public ZlibWithHeader78(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ZlibWithHeader78(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ZlibWithHeader78(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ZlibWithHeader78 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_data = this._io.readBytesFull();
        this.data = KaitaiStream.processZlib(this._raw_data);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._raw_data = KaitaiStream.unprocessZlib(this.data);
        this._io.writeBytes(this._raw_data);
        if (!(this._io.isEof()))
            throw new ConsistencyError("data", this._io.size() - this._io.pos(), 0);
    }

    public void _check() {
    }
    private byte[] data;
    private ZlibWithHeader78 _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_data;
    public byte[] data() { return data; }
    public void setData(byte[] _v) { data = _v; }
    public ZlibWithHeader78 _root() { return _root; }
    public void set_root(ZlibWithHeader78 _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_data() { return _raw_data; }
    public void set_raw_Data(byte[] _v) { _raw_data = _v; }
}
