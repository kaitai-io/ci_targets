// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class InstanceStd extends KaitaiStruct {
    public static InstanceStd fromFile(String fileName) throws IOException {
        return new InstanceStd(new ByteBufferKaitaiStream(fileName));
    }

    public InstanceStd(KaitaiStream _io) {
        this(_io, null, null);
    }

    public InstanceStd(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public InstanceStd(KaitaiStream _io, KaitaiStruct _parent, InstanceStd _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }
    private String header;
    public String header() {
        if (this.header != null)
            return this.header;
        long _pos = this._io.pos();
        this._io.seek(2);
        this.header = new String(this._io.readBytes(5), StandardCharsets.US_ASCII);
        this._io.seek(_pos);
        return this.header;
    }
    private InstanceStd _root;
    private KaitaiStruct _parent;
    public InstanceStd _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
