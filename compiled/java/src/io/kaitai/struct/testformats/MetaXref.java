// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class MetaXref extends KaitaiStruct {
    public static MetaXref fromFile(String fileName) throws IOException {
        return new MetaXref(new ByteBufferKaitaiStream(fileName));
    }

    public MetaXref(KaitaiStream _io) {
        this(_io, null, null);
    }

    public MetaXref(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public MetaXref(KaitaiStream _io, KaitaiStruct _parent, MetaXref _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }
    private MetaXref _root;
    private KaitaiStruct _parent;
    public MetaXref _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
