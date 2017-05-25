// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class OpaqueExternalType extends KaitaiStruct {
    public static OpaqueExternalType fromFile(String fileName) throws IOException {
        return new OpaqueExternalType(new KaitaiStream(fileName));
    }

    public OpaqueExternalType(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public OpaqueExternalType(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public OpaqueExternalType(KaitaiStream _io, KaitaiStruct _parent, OpaqueExternalType _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this.one = new TermStrz(this._io);
    }
    private TermStrz one;
    private OpaqueExternalType _root;
    private KaitaiStruct _parent;
    public TermStrz one() { return one; }
    public OpaqueExternalType _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
