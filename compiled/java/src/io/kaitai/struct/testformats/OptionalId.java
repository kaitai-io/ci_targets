// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class OptionalId extends KaitaiStruct {
    public static OptionalId fromFile(String fileName) throws IOException {
        return new OptionalId(new ByteBufferKaitaiStream(fileName));
    }

    public OptionalId(KaitaiStream _io) {
        this(_io, null, null);
    }

    public OptionalId(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public OptionalId(KaitaiStream _io, KaitaiStruct _parent, OptionalId _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this._unnamed0 = this._io.readU1();
        this._unnamed1 = this._io.readU1();
        this._unnamed2 = this._io.readBytes(5);
    }
    private int _unnamed0;
    private int _unnamed1;
    private byte[] _unnamed2;
    private OptionalId _root;
    private KaitaiStruct _parent;
    public int _unnamed0() { return _unnamed0; }
    public int _unnamed1() { return _unnamed1; }
    public byte[] _unnamed2() { return _unnamed2; }
    public OptionalId _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
