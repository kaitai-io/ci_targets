// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ImportsAbs extends KaitaiStruct {
    public static ImportsAbs fromFile(String fileName) throws IOException {
        return new ImportsAbs(new ByteBufferKaitaiStream(fileName));
    }

    public ImportsAbs(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ImportsAbs(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ImportsAbs(KaitaiStream _io, KaitaiStruct _parent, ImportsAbs _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.len = new VlqBase128Le(this._io);
        this.body = this._io.readBytes(len().value());
    }

    public void _fetchInstances() {
        this.len._fetchInstances();
    }
    public VlqBase128Le len() { return len; }
    public byte[] body() { return body; }
    public ImportsAbs _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private VlqBase128Le len;
    private byte[] body;
    private ImportsAbs _root;
    private KaitaiStruct _parent;
}
