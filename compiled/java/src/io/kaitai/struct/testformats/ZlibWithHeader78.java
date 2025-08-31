// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ZlibWithHeader78 extends KaitaiStruct {
    public static ZlibWithHeader78 fromFile(String fileName) throws IOException {
        return new ZlibWithHeader78(new ByteBufferKaitaiStream(fileName));
    }

    public ZlibWithHeader78(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ZlibWithHeader78(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ZlibWithHeader78(KaitaiStream _io, KaitaiStruct _parent, ZlibWithHeader78 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._raw_data = this._io.readBytesFull();
        this.data = KaitaiStream.processZlib(this._raw_data);
    }

    public void _fetchInstances() {
    }
    private byte[] data;
    private ZlibWithHeader78 _root;
    private KaitaiStruct _parent;
    private byte[] _raw_data;
    public byte[] data() { return data; }
    public ZlibWithHeader78 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_data() { return _raw_data; }
}
