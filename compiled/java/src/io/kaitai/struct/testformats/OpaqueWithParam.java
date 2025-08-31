// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class OpaqueWithParam extends KaitaiStruct {
    public static OpaqueWithParam fromFile(String fileName) throws IOException {
        return new OpaqueWithParam(new ByteBufferKaitaiStream(fileName));
    }

    public OpaqueWithParam(KaitaiStream _io) {
        this(_io, null, null);
    }

    public OpaqueWithParam(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public OpaqueWithParam(KaitaiStream _io, KaitaiStruct _parent, OpaqueWithParam _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = new ParamsDef(this._io, 5, true);
    }

    public void _fetchInstances() {
        this.one._fetchInstances();
    }
    private ParamsDef one;
    private OpaqueWithParam _root;
    private KaitaiStruct _parent;
    public ParamsDef one() { return one; }
    public OpaqueWithParam _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
