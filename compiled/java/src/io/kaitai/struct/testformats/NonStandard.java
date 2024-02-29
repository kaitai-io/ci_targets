// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class NonStandard extends KaitaiStruct {
    public static NonStandard fromFile(String fileName) throws IOException {
        return new NonStandard(new ByteBufferKaitaiStream(fileName));
    }

    public NonStandard(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NonStandard(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public NonStandard(KaitaiStream _io, KaitaiStruct _parent, NonStandard _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.foo = this._io.readU1();
        switch (foo()) {
        case 42: {
            this.bar = (long) (this._io.readU2le());
            break;
        }
        case 43: {
            this.bar = this._io.readU4le();
            break;
        }
        }
    }
    private Integer pi;
    public Integer pi() {
        if (this.pi != null)
            return this.pi;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.pi = this._io.readU1();
        this._io.seek(_pos);
        return this.pi;
    }
    private Integer vi;
    public Integer vi() {
        if (this.vi != null)
            return this.vi;
        int _tmp = (int) (foo());
        this.vi = _tmp;
        return this.vi;
    }
    private int foo;
    private Long bar;
    private NonStandard _root;
    private KaitaiStruct _parent;
    public int foo() { return foo; }
    public Long bar() { return bar; }
    public NonStandard _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
