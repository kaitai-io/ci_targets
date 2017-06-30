// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class IfInstances extends KaitaiStruct {
    public static IfInstances fromFile(String fileName) throws IOException {
        return new IfInstances(new KaitaiStream(fileName));
    }

    public IfInstances(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IfInstances(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public IfInstances(KaitaiStream _io, KaitaiStruct _parent, IfInstances _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }
    private Integer neverHappens;
    public Integer neverHappens() {
        if (this.neverHappens != null)
            return this.neverHappens;
        if (false) {
            long _pos = this._io.pos();
            this._io.seek(100500);
            this.neverHappens = this._io.readU1();
            this._io.seek(_pos);
        }
        return this.neverHappens;
    }
    private IfInstances _root;
    private KaitaiStruct _parent;
    public IfInstances _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
