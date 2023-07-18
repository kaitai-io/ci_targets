// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class StrEos extends KaitaiStruct {
    public static StrEos fromFile(String fileName) throws IOException {
        return new StrEos(new ByteBufferKaitaiStream(fileName));
    }

    public StrEos(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEos(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrEos(KaitaiStream _io, KaitaiStruct _parent, StrEos _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.str = new String(this._io.readBytesFull(), StandardCharsets.UTF_8);
    }
    private String str;
    private StrEos _root;
    private KaitaiStruct _parent;
    public String str() { return str; }
    public StrEos _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
