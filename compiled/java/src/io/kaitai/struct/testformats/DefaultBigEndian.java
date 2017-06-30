// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class DefaultBigEndian extends KaitaiStruct {
    public static DefaultBigEndian fromFile(String fileName) throws IOException {
        return new DefaultBigEndian(new KaitaiStream(fileName));
    }

    public DefaultBigEndian(KaitaiStream _io) {
        this(_io, null, null);
    }

    public DefaultBigEndian(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public DefaultBigEndian(KaitaiStream _io, KaitaiStruct _parent, DefaultBigEndian _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = this._io.readU4be();
    }
    private long one;
    private DefaultBigEndian _root;
    private KaitaiStruct _parent;
    public long one() { return one; }
    public DefaultBigEndian _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
